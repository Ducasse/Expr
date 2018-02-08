"
I'm an expression visitor.
"
Class {
	#name : #ExpVisitor,
	#superclass : #Object,
	#category : #SimpleExpressions
}

{ #category : #visit }
ExpVisitor >> visit: anExpression [

	^ anExpression acceptVisitor: self
]

{ #category : #visit }
ExpVisitor >> visitAddition: anExpression [
	
	self subclassResponsibility 
]

{ #category : #visit }
ExpVisitor >> visitMultiplication: anExpression [

		self subclassResponsibility 
]

{ #category : #visit }
ExpVisitor >> visitNumber: anExpression [

	self subclassResponsibility 
]

{ #category : #visit }
ExpVisitor >> visitParenthesis: anExpression [

		self visit: anExpression expression
]
