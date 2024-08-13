"
ACTIVITY LEVELS
Little to no exercise 	BMR x 1.2
Light exercise (1-3 days per week) 	BMR x 1.375
Moderate exercise (3-5 days/week) 	BMR x 1.55
Heavy exercise (6-7 days/week) 	BMR x 1.725
Very heavy exercise (twice per day, extra heavy workouts) 	BMR x 1.9
		
Example: a person that trains at the gym 3-4 days a week and goes for a longish run on the weekend, has a moderate level of 1.55
"
Class {
	#name : 'ActivityLevelHarrisBenedictEquation',
	#superclass : 'Object',
	#category : 'ProteinCalculator',
	#package : 'ProteinCalculator'
}

{ #category : 'as yet unclassified' }
ActivityLevelHarrisBenedictEquation >> heavy [

	^ 1.725
]

{ #category : 'as yet unclassified' }
ActivityLevelHarrisBenedictEquation >> light [

	^ 1.375
]

{ #category : 'as yet unclassified' }
ActivityLevelHarrisBenedictEquation >> little [

	^ 1.2
]

{ #category : 'as yet unclassified' }
ActivityLevelHarrisBenedictEquation >> moderate [

	^ 1.55
]

{ #category : 'as yet unclassified' }
ActivityLevelHarrisBenedictEquation >> veryHeavy [

	^ 1.9
]
