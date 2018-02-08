"
Not sure that we need this guy. 
"
Class {
	#name : #ExParenthesis,
	#superclass : #Expression,
	#instVars : [
		'expression'
	],
	#category : #SimpleExpressionSkeleton
}

{ #category : #accessing }
ExParenthesis >> expression [
	^ expression
]

{ #category : #accessing }
ExParenthesis >> expression: anObject [
	expression := anObject
]
