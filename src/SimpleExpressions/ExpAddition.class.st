"
I represent an addition.
"
Class {
	#name : #ExpAddition,
	#superclass : #ExpBinaryExpression,
	#category : #SimpleExpressions
}

{ #category : #accepting }
ExpAddition >> acceptVisitor: aVisitor [

	^ aVisitor visitAddition: self
]

{ #category : #printing }
ExpAddition >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' + '
]

{ #category : #testing }
ExpAddition >> priority [

	^ 2
]
