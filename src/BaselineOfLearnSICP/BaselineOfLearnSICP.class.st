Class {
	#name : #BaselineOfLearnSICP,
	#superclass : #BaselineOf,
	#category : #BaselineOfLearnSICP
}

{ #category : #accessing }
BaselineOfLearnSICP >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'LearnSICP' ]
]
