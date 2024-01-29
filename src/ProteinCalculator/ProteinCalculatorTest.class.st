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

	proteinCalculator beef: 100.
	self assert: proteinCalculator totalProtein equals: 26
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInBroccoli [
	"https://www.healthline.com/nutrition/foods/broccoli"

	proteinCalculator broccoli: 90.
	self assert: proteinCalculator totalProtein equals: 2.3
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInChicken [
	"https://www.justchartit.com/meat-protein-chart/"

	proteinCalculator chicken: 100.
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

	proteinCalculator milk: 249.
	self assert: proteinCalculator totalProtein equals: 8.14
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInOat [
	"https://www.healthline.com/nutrition/foods/oats"

	proteinCalculator oat: 81.
	self assert: proteinCalculator totalProtein equals: 10.7
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInPureProtein [
	"https://www.healthline.com/nutrition/quinoa#nutrients"

	proteinCalculator pureProtein: 100.
	self assert: proteinCalculator totalProtein equals: 100
]

{ #category : 'tests' }
ProteinCalculatorTest >> testCalculateProteinInQuinoa [
	"https://www.healthline.com/nutrition/quinoa#nutrients"

	proteinCalculator quinoa: 100.
	self assert: proteinCalculator totalProtein equals: 4.4
]

{ #category : 'tests' }
ProteinCalculatorTest >> testSeveralFoods [

	proteinCalculator
		eggs: 4;
		oat: 15;
		bananas: 2;
		milk: 350;
		pureProtein: 22;
		beef: 250;
		quinoa: 200;
		broccoli: 30;
		pureProtein: 22.
	self assert: proteinCalculator totalProtein closeTo: 160.1899
]
