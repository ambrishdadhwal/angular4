/*
* Service for providing client storage (Cache) for certian UI workflows. By default storage type is "sessionStorage" i.e
* that it stores the data for only one session and the moment browser is closed data will be erased.
* 
* Although, This service allows to change the storage type to "localStorage".
* [NOTE] Make sure to erase the data explicitly whenever UI workflow is done with the data.
* [NOTE] Make sure 'storageType' is defined in app.js as "constant value service".
*
* @version 
* 1.0
*
* @return 
* {clientStorageService} The storage object to the client
*
* @todo
* 1. TTL for cached obejcts(incase if storage type is local).
* 2. Make Use of Angular Cache API in conjunction with localstorage API.
*
* @example
* To inject this service 
* app.controller('myAppController', function($scope, clientStorageService){..}
*
* To set a key in Cache
* clientStorageService.set("key", "plain value" | "object" | "array");
*
* To read a key from Cache
* //TODO (rkumar): Fix needed below, Reason: while doing "get" we have to use "angular.fromJson" on the value otherwise the object fails to bind correctly.
* // ideally this should not be called twice.
* $scope.object = angular.fromJson(clientStorageService.get("key")); 
*
* To print cache (only for debugging purpose, not to be used in prodcustion code)
* clientStorageService.print();
*
* To remove a key from Cache
* clientStorageService.remove("key");
*
* To reset Cache
* clientStorageService.reset();
*
*/
(function() {
	'use strict';

	app.factory("clientStorageService",['storageType','base64', function(storageType,base64){
	var storage = {};
	var cacheKeyPrefix = "tk_"; // to reflect our app namespace for cache keys
	var privilegedataPrefix = "privilegedata.";//prefix for privilege based data i.e always reset when app.js loads first time
	// by default session
	storage.type = storageType;
	
	var storageObject = function(){
		if (storage.type === 'local' && window.localStorage) {
			return localStorage;
		} else {
			if (window.sessionStorage) {
				return sessionStorage;
			}
		}
	};

	storage.count = storageObject().length;
	
	// By default storage type will be session, but we can override it to localstorage
	storage.setStorageType = function(type) {
		storage.type = type;
	};

	// set/put value in cache, if same key is added, it will override the previous one.
	storage.set = function(key, value) {
	  
	  if(ObjectUtils.isNullOrUndefined(key)) {
      return;
    }
	  
		var st = storageObject();
		st.setItem((cacheKeyPrefix + key), angular.toJson(value));
		storage.count++;
	};
	
	// print cache values
	storage.print = function(){
		var st = storageObject();
		for (var i = 0; i < st.length; i++) {
			 var key = st.key(i);
			 var value = st.getItem(key);
			console.log(key+ "::::"+ value);
		}
	};

	// Get Value from cache
	storage.get = function(key) {
	  if(ObjectUtils.isNullOrUndefined(key)) {
	    return null;
	  }

	  var st = storageObject();
		var value = st.getItem((cacheKeyPrefix + key));
		
		if((typeof(value) !== 'undefined') && (value !== null))
			return angular.fromJson(value);
		else
			return null;
	};

	// Remove value from cache
	storage.remove = function(key) {
	  if(ObjectUtils.isNullOrUndefined(key)) {
      return;
    }
	  
		var st = storageObject();
		st.removeItem((cacheKeyPrefix + key));
		storage.count--;
		delete st.key;
	};

	// reset the cache (clear all entries)
	storage.reset = function() {
		var st = storageObject();
		storage.count = 0;
		st.clear();
	};
	
//reset the cache (clear all entries for privilege based data)
  storage.resetPrivilegeBasedData = function() {
    var st = storageObject();
    for (var i = 0; i < st.length; i++) {
      var key = st.key(i);
      if(key.indexOf(cacheKeyPrefix+privilegedataPrefix)>-1){
        key =key.split(cacheKeyPrefix)[1];
        storage.remove(key);
        i--;
      }
      
    }
  };
	
//set/put value in cache, if same key is added, it will override the previous one.
  storage.setPrivilegeBasedData = function(key, value) {
    key = privilegedataPrefix+key;
    if(!angular.isUndefined(value) && value!=null){ 
      storage.set(key, base64.encode(angular.toJson(value))); 
    }    
  }
  
  //  Get Value from cache for privilege based data
  storage.getPrivilegeBasedData = function(key) {
    key = privilegedataPrefix+key;
    var value = storage.get(key);
    if(!angular.isUndefined(value) && value!=null){ 
      return angular.fromJson(base64.decode(value)); 
    }
    return null;
  }
  
	return storage;
  }]);

})();
