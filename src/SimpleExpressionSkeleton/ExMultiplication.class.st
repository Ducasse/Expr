"
I represent a multiplication
"
Class {
	#name : #ExMultiplication,
	#superclass : #ExBinaryExpression,
	#category : #SimpleExpressionSkeleton
}

{ #category : #printing }
ExMultiplication >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' + '
]

{ #category : #accessing }
ExMultiplication >> priority [

	^ 4
]
