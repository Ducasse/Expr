"
An expression tree evaluator
"
Class {
	#name : #ExpEvaluatorVisitor,
	#superclass : #ExpVisitor,
	#category : #SimpleExpressions
}

{ #category : #'as yet unclassified' }
ExpEvaluatorVisitor class >> evaluate: anExpression [

	^ self new visit: anExpression
]

{ #category : #visit }
ExpEvaluatorVisitor >> visitAddition: aMultiExpression [

	| leftValue rightValue | 
	rightValue := self visit: aMultiExpression right.
	leftValue := self visit: aMultiExpression left.
	^ rightValue + leftValue
]

{ #category : #visit }
ExpEvaluatorVisitor >> visitMultiplication: aMultiExpression [

	| leftValue rightValue | 
	rightValue := self visit: aMultiExpression right.
	leftValue := self visit: aMultiExpression left.
	^ rightValue * leftValue
]

{ #category : #visit }
ExpEvaluatorVisitor >> visitNumber: aNumberExpression [

	^ aNumberExpression value
]
