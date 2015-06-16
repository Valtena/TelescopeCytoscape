building
buildVisualization

	| symbols objects |
	symbols := self symbolsUsedInNames.
	objects := ( symbols associations 
		asSortedCollection: [ :a : b | a value size > b value size ] )
		asOrderedCollection.
	
	( self > #names ) styleSheet
			onlyLabelForNodes;
			nodeLabel: #key;
		backgroundColor: [ :each | Color black ];
		height: [ :e | ((RTNFontLinearNormalizer 
			inContext: objects 
			withCommand: [:each | each value size])) 
			rtValue: e ].
		
	self > #names
		addNodesFromEntities: objects;
		addInteraction: ( TLNodeBasicInteraction popup: [:each | each value size asString ] );
		layout: ( RTFlowLayout new maxWidth: 600 ).