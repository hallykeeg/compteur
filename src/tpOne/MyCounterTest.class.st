Class {
	#name : #MyCounterTest,
	#superclass : #TestCase,
	#category : #tpOne
}

{ #category : #tests }
MyCounterTest >> testCounterSetAndGet [
|compteur|
compteur := CounterTp new.
compteur valeur: 10.

self assert: compteur valeur equals: 10.
]

{ #category : #tests }
MyCounterTest >> testCreateCounter [
 self assert: (CounterTp createCounter: 20) valeur equals: 20.
]

{ #category : #tests }
MyCounterTest >> testDecrements [
 |compt|
compt := CounterTp new.
compt valeur: 5.
compt decrements.
self assert: compt valeur equals:4.
]

{ #category : #tests }
MyCounterTest >> testIncrementCompteur [
	 |compteur|
		compteur := CounterTp new.
		compteur valeur: 10.
		compteur increments; increments.
		self assert: compteur valeur equals: 12.
]

{ #category : #tests }
MyCounterTest >> testInit [
	 self assert: (CounterTp new increments ; increments ; valeur ) equals: 2.
]

{ #category : #tests }
MyCounterTest >> testStartingC [
self assert: (CounterTp new startingCAt: 10 ) valeur  equals: 10.
]
