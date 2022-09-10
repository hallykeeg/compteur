Class {
	#name : #CounterTp,
	#superclass : #Object,
	#instVars : [
		'valeur'
	],
	#category : #tpOne
}

{ #category : #classProtocol }
CounterTp class >> createCounter:val [
 ^ (self new valeur: val).
]

{ #category : #edition }
CounterTp >> decrements [
self valeur: self valeur -1.
]

{ #category : #edition }
CounterTp >> increments [
	self valeur: self valeur +1. 

 
]

{ #category : #initialization }
CounterTp >> initialize [ 
 valeur := 0.
]

{ #category : #printing }
CounterTp >> printOn: aStream [
super printOn: aStream.
aStream nextPutAll: ' avec la valeur: ', valeur printString .
]

{ #category : #edition }
CounterTp >> startingCAt:val [
	 ^ self new valeur: val .
]

{ #category : #accessing }
CounterTp >> valeur [
	^ valeur.
]

{ #category : #accessing }
CounterTp >> valeur: newVal [
	valeur := newVal .
]
