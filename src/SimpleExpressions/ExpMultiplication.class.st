"
I represent a multiplication
"
Class {
	#name : #ExpMultiplication,
	#superclass : #ExpBinaryExpression,
	#category : #SimpleExpressions
}

{ #category : #accepting }
ExpMultiplication >> acceptVisitor: aVisitor [

	^ aVisitor visitMultiplication: self
]

{ #category : #printing }
ExpMultiplication >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' + '
]

{ #category : #accessing }
ExpMultiplication >> priority [

	^ 4
]
