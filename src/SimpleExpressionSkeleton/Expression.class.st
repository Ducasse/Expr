"
I'm an abstract class representing expression.
"
Class {
	#name : #Expression,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #SimpleExpressionSkeleton
}

{ #category : #accessing }
Expression >> parent [
	^ parent
]

{ #category : #accessing }
Expression >> parent: anObject [
	parent := anObject
]

{ #category : #testing }
Expression >> priority [

	^ self subclassResponsibility
]

{ #category : #testing }
Expression >> shouldBeSurrounded [

	^ false
]
