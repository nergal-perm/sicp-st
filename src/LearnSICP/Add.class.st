Class {
	#name : #Add,
	#superclass : #Object,
	#instVars : [
		'args'
	],
	#classInstVars : [
		'args'
	],
	#category : #LearnSICP
}

{ #category : #accessing }
Add class >> arguments: anArrayOrNil [
	^ self new 
		args: (anArrayOrNil isNil ifTrue: [ #() ] ifFalse: [ anArrayOrNil ]);
		yourself.
]

{ #category : #accessing }
Add >> args: anArray [
	args := anArray
]

{ #category : #accessing }
Add >> value [
	^ args inject:0 into: [:sum :each | sum + each value]
]
