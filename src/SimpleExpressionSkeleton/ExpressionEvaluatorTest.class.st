Class {
	#name : #ExpressionEvaluatorTest,
	#superclass : #ExpressionTest,
	#category : #SimpleExpressionSkeleton
}

{ #category : #tests }
ExpressionEvaluatorTest >> testComplexMultiplication [
	| ex visitor |
	ex := self twoMultiplications.
	visitor := ExEvaluatorVisitor new.
	self assert: (ex acceptVisitor: visitor) = 100
]

{ #category : #tests }
ExpressionEvaluatorTest >> testEvaluateANumber [
	self assert: (ExEvaluatorVisitor evaluate: self numberTwo) = 2
]

{ #category : #tests }
ExpressionEvaluatorTest >> testSimpleAddition [
	| ex |
	ex := self simpleAddition.
	self assert: (ExEvaluatorVisitor new visit: ex) = 5
]

{ #category : #tests }
ExpressionEvaluatorTest >> testSimpleMultiplication [
	| ex |
	ex := self simpleMultiplication.
	self assert: (ExEvaluatorVisitor new visit: ex) = 6
]
