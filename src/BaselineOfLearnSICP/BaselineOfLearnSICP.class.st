Class {
	#name : #BaselineOfLearnSICP,
	#superclass : #BaselineOf,
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
	spec for: #common do: [ spec package: 'LearnSICP' ]
]
