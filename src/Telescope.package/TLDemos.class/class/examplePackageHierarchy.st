not working demos
examplePackageHierarchy
	"self exampleOverallHierarchy"
	
	self flag: 'Invalid demo; cannot run like this'.
		
	"for FAMIXNamespaceGroup
	 TLOverallHierarchy new
		entities: self asOrderedCollection;
		nameProperty: #name;
		property: #parentScope;
		open"
		
	TLPackageHierarchy new
		entities: TLDrawable withAllSubclasses;
		nameProperty: #name;
		property: #superclass;
		open