Class {
	#name : #SicpAddition,
	#superclass : #SicpMultiaryFunction,
	#category : #'LearnSICP-Core'
}

{ #category : #accessing }
SicpAddition >> value [
	^ args inject:0 into: [:sum :each | sum + each value]
]
