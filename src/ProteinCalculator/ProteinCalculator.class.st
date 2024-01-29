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
ProteinCalculator >> beef: grams [

	totalProtein := totalProtein + (grams * 0.26)
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> broccoli: grams [

	totalProtein := totalProtein + (grams * (2.3 / 90))
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> chicken: grams [

	totalProtein := totalProtein + (grams * 0.27)
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> eggs: anInteger [ 

	totalProtein := totalProtein + (anInteger * 6.5)
]

{ #category : 'initialization' }
ProteinCalculator >> initialize [

	super initialize.
	totalProtein := 0
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> milk: grams [

	totalProtein := totalProtein + (grams * (8.14 / 249))
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> oat: grams [

	totalProtein := totalProtein + (grams * (10.7 / 81))
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> pureProtein: grams [

	totalProtein := totalProtein + grams
]

{ #category : 'as yet unclassified' }
ProteinCalculator >> quinoa: grams [

	totalProtein := totalProtein + (grams * (4.4 / 100))
]

{ #category : 'accessing' }
ProteinCalculator >> totalProtein [

	^ totalProtein
]
