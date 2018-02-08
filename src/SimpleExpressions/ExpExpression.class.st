"
I'm an abstract class representing expression.
"
Class {
	#name : #ExpExpression,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #SimpleExpressions
}

{ #category : #accepting }
ExpExpression >> acceptVisitor: aVisitor [

	^ aVisitor visit: self
]

{ #category : #accessing }
ExpExpression >> parent [
	^ parent
]

{ #category : #accessing }
ExpExpression >> parent: anObject [
	parent := anObject
]

{ #category : #testing }
ExpExpression >> priority [

	^ self subclassResponsibility
]

{ #category : #testing }
ExpExpression >> shouldBeSurrounded [

	^ false
]
