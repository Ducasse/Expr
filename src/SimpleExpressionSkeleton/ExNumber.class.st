"
I'm a simple number that can appear on tree leaves.
"
Class {
	#name : #ExNumber,
	#superclass : #Expression,
	#instVars : [
		'value'
	],
	#category : #SimpleExpressionSkeleton
}

{ #category : #'instance creation' }
ExNumber class >> value: aNumber [

	^ self new value: aNumber
]

{ #category : #printing }
ExNumber >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: value printString
]

{ #category : #accessing }
ExNumber >> value [ 	
	^ value
]

{ #category : #accessing }
ExNumber >> value: aNumber [	
	value := aNumber
]
