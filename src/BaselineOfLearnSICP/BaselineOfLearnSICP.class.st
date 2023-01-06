Class {
	#name : #BaselineOfLearnSICP,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfLearnSICP
}

{ #category : #accessing }
BaselineOfLearnSICP class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'nergal-perm'
				/ 'sicp-st' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #accessing }
BaselineOfLearnSICP >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec postLoadDoIt: #postLoadBaseline:.
			spec
				package: 'LearnSICP' with: [ spec requires: #('LearnSICP-Core') ];
				package: 'LearnSICP-Core' ]
]

{ #category : #accessing }
BaselineOfLearnSICP >> postLoadBaseline: spec [
	(PostLoaded isNotNil and: [ PostLoaded ]) ifTrue: [ ^ self ].
	PostLoaded := true.

	self class loadLepiter
]
