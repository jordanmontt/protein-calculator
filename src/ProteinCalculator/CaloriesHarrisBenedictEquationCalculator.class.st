"
This calculation is done using the Harris–Benedict equations revised by Roza and Shizgal, 1984.

Paper: https://zakboekdietetiek.nl/wp-content/uploads/2015/06/roza-1984.pdf

Useful website: https://www.maxinutrition.com/blogs/sports/calories-to-cut

It can be used to calculate the calories needed for cutting:


```
calculator := CaloriesHarrisBenedictEquationCalculator new
		age: 26;
		weight: 81 ""kg"";
		height: 180 ""cm"";
		moderateActivityLevel.
		
calories := calculator calculate.
cutting := calories * 0.9 ""2636.1831150000003""
```
"
Class {
	#name : 'CaloriesHarrisBenedictEquationCalculator',
	#superclass : 'Object',
	#instVars : [
		'weight',
		'height',
		'age',
		'activityLevel'
	],
	#category : 'ProteinCalculator',
	#package : 'ProteinCalculator'
}

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculator >> age: ageInYears [

	age := ageInYears
]

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculator >> calculateMaintenanceCalories [

	"The values are for males"
	| basalMetabolicRate maintenanceCalories |
	basalMetabolicRate := 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age).
	maintenanceCalories := basalMetabolicRate * activityLevel.
	^ maintenanceCalories
]

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculator >> heavyActivityLevel [

	activityLevel := ActivityLevelHarrisBenedictEquation new heavy
]

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculator >> height: heightInCM [

	height := heightInCM
]

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculator >> moderateActivityLevel [

	activityLevel := ActivityLevelHarrisBenedictEquation new moderate
]

{ #category : 'accessing' }
CaloriesHarrisBenedictEquationCalculator >> weight: weightInKG [

	weight := weightInKG
]
