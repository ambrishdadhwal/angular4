//routes array

export const appRoutes: Routes =[
{path :'',redirectTo:'/home',component:HomeComponent},  //or
{path:'',component:HomeComponent}
{
	path :'about',
	component:AboutComponent,
	children:
	[
		{path:'',component:AboutHomeComponent},    //url is /about
		{path:'Item/:id',component:AboutItemComponent}  //url is /about/Item     same as in html file
	]
},
{path :'**',component:NotFound}
];

@NgModule({
	declarations :[//components here],
	imports:[RouterModule.forRoot(appRoutes)]
	
})

<a [routerLink]="['/']">Home</a>
<a [routerLink]="['/about',1]">About</a>