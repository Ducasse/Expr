"
I represent an addition.
"
Class {
	#name : #ExAddition,
	#superclass : #ExBinaryExpression,
	#category : #SimpleExpressionSkeleton
}

{ #category : #printing }
ExAddition >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' + '
]

{ #category : #testing }
ExAddition >> priority [

	^ 2
]
