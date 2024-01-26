Class {
	#name : 'ProteinCalculator',
	#superclass : 'Object',
	#instVars : [
		'totalProtein'
	],
	#category : 'ProteinCalculator',
	#package : 'ProteinCalculator'
}

{ #category : 'as yet unclassified' }
ProteinCalculator >> bananas: bananas [

	totalProtein := totalProtein + (bananas * 1.1)
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> eggs: anInteger [ 

	totalProtein := totalProtein + (anInteger * 6.5)
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfBeef: grams [

	totalProtein := totalProtein + (grams * 0.26)
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfBroccoli: grams [

	totalProtein := totalProtein + (grams * (2.3 / 90))
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfChicken: grams [

	totalProtein := totalProtein + (grams * 0.27)
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfMilk: grams [

	totalProtein := totalProtein + (grams * (8.14 / 249))
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfOat: grams [

	totalProtein := totalProtein + (grams * (10.7 / 81))
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfPureProtein: grams [

	totalProtein := totalProtein + grams
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> gramsOfQuinoa: grams [

	totalProtein := totalProtein + (grams * (4.4 / 100))
]

{ #category : 'initialization' }
ProteinCalculator >> initialize [

	super initialize.
	totalProtein := 0
]

{ #category : 'accessing' }
ProteinCalculator >> totalProtein [

	^ totalProtein
]
