"
I'm a simple number that can appear on tree leaves.
"
Class {
	#name : #ExpNumber,
	#superclass : #ExpExpression,
	#instVars : [
		'value'
	],
	#category : #SimpleExpressions
}

{ #category : #'instance creation' }
ExpNumber class >> value: aNumber [

	^ self new value: aNumber
]

{ #category : #accepting }
ExpNumber >> acceptVisitor: aVisitor [

	^ aVisitor visitNumber: self
]

{ #category : #printing }
ExpNumber >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: value printString
]

{ #category : #accessing }
ExpNumber >> value [ 	
	^ value
]

{ #category : #accessing }
ExpNumber >> value: aNumber [	
	value := aNumber
]
