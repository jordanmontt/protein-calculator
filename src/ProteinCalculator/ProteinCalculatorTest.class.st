Class {
	#name : 'ProteinCalculatorTest',
	#superclass : 'TestCase',
	#instVars : [
		'proteinCalculator'
	],
	#category : 'ProteinCalculator',
	#package : 'ProteinCalculator'
}

{ #category : 'running' }
ProteinCalculatorTest >> setUp [
	super setUp.

	proteinCalculator := ProteinCalculator new
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInBananas [
	"https://www.healthline.com/nutrition/foods/bananas#nutrition"

	proteinCalculator bananas: 1.
	self assert: proteinCalculator totalProtein equals: 1.1
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInBeef [
	"https://www.justchartit.com/meat-protein-chart/"

	proteinCalculator gramsOfBeef: 100.
	self assert: proteinCalculator totalProtein equals: 26
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInChicken [
	"https://www.justchartit.com/meat-protein-chart/"

	proteinCalculator gramsOfChicken: 100.
	self assert: proteinCalculator totalProtein equals: 27
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInEggs [
	"https://www.healthline.com/nutrition/protein-in-egg"

	proteinCalculator eggs: 1.
	self assert: proteinCalculator totalProtein equals: 6.5.
	proteinCalculator := ProteinCalculator new
		eggs: 3;
		yourself.
	self assert: proteinCalculator totalProtein equals: 19.5
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInMilk [
	"https://www.healthline.com/nutrition/milk#nutrition"

	proteinCalculator gramsOfMilk: 249.
	self assert: proteinCalculator totalProtein equals: 8.14
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInOat [
	"https://www.healthline.com/nutrition/foods/oats"

	proteinCalculator gramsOfOat: 81.
	self assert: proteinCalculator totalProtein equals: 10.7
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInQuinoa [
	"https://www.healthline.com/nutrition/quinoa#nutrients"

	proteinCalculator gramsOfQuinoa: 100.
	self assert: proteinCalculator totalProtein equals: 4.4
]
