Class {
	#name : #Combination,
	#superclass : #Object,
	#instVars : [
		'operator',
		'arguments'
	],
	#category : #LearnSICP
}

{ #category : #accessing }
Combination class >> withOperator: aProcedure andArguments: aCollection [
	^ Combination new
		operator: aProcedure;
		arguments: aCollection;
		yourself. 
]

{ #category : #accessing }
Combination >> arguments: aCollection [ 
	arguments := aCollection
]

{ #category : #accessing }
Combination >> operator: aProcedure [ 
	operator := aProcedure
]
