Class {
	#name : #CounterTp,
	#superclass : #Object,
	#instVars : [
		'valeur'
	],
	#category : #tpOne
}

{ #category : #accessing }
CounterTp >> valeur [
	^ valeur.
]

{ #category : #accessing }
CounterTp >> valeur: newVal [
	valeur := newVal .
]
