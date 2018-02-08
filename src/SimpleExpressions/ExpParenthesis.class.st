"
Not sure that we need this guy. 
"
Class {
	#name : #ExpParenthesis,
	#superclass : #ExpExpression,
	#instVars : [
		'expression'
	],
	#category : #SimpleExpressions
}

{ #category : #accepting }
ExpParenthesis >> acceptVisitor: aVisitor [

	^ aVisitor visitParenthesis: self
]

{ #category : #accessing }
ExpParenthesis >> expression [
	^ expression
]

{ #category : #accessing }
ExpParenthesis >> expression: anObject [
	expression := anObject
]
