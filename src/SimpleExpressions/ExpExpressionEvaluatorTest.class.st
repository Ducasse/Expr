Class {
	#name : #ExpExpressionEvaluatorTest,
	#superclass : #ExpExpressionTest,
	#category : #SimpleExpressions
}

{ #category : #tests }
ExpExpressionEvaluatorTest >> testComplexMultiplication [
	| ex visitor |
	ex := self twoMultiplications.
	visitor := ExpEvaluatorVisitor new.
	self assert: (ex acceptVisitor: visitor) = 100
]

{ #category : #tests }
ExpExpressionEvaluatorTest >> testEvaluateANumber [
	self assert: (ExpEvaluatorVisitor evaluate: self numberTwo) = 2
]

{ #category : #tests }
ExpExpressionEvaluatorTest >> testSimpleAddition [
	| ex |
	ex := self simpleAddition.
	self assert: (ExpEvaluatorVisitor new visit: ex) = 5
]

{ #category : #tests }
ExpExpressionEvaluatorTest >> testSimpleMultiplication [
	| ex |
	ex := self simpleMultiplication.
	self assert: (ExpEvaluatorVisitor new visit: ex) = 6
]
