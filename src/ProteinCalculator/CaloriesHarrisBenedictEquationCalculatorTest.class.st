"
A CaloryIntakeCalculatorTest is a test class for testing the behavior of CaloryIntakeCalculator
"
Class {
	#name : 'CaloriesHarrisBenedictEquationCalculatorTest',
	#superclass : 'TestCase',
	#category : 'ProteinCalculator',
	#package : 'ProteinCalculator'
}

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculatorTest >> testCalculateMaintenanceCalories [

	| calculator |
	calculator := CaloriesHarrisBenedictEquationCalculator new
		age: 25;
		weight: 75 "kg";
		height: 178 "cm";
		moderateActivityLevel.

	self assert: calculator calculateMaintenanceCalories closeTo: 2798.4227
]
