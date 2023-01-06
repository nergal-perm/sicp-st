Class {
	#name : #SicpFunction,
	#superclass : #Object,
	#instVars : [
		'args'
	],
	#category : #'LearnSICP-Core'
}

{ #category : #'instance creation' }
SicpFunction class >> withArguments: anArrayOrNil [
	^ self new 
		args: (anArrayOrNil isNil ifTrue: [ #() ] ifFalse: [ anArrayOrNil ]);
		checkArity;
		yourself.
]

{ #category : #accessing }
SicpFunction >> args: anArray [
	args := anArray 
]

{ #category : #validating }
SicpFunction >> checkArity [
	^ self subclassResponsibility
]

{ #category : #accessing }
SicpFunction >> value [
	^ self subclassResponsibility
]
