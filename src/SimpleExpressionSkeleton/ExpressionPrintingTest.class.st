Class {
	#name : #ExpressionPrintingTest,
	#superclass : #ExpressionTest,
	#category : #SimpleExpressionSkeleton
}

{ #category : #tests }
ExpressionPrintingTest >> testAddition [
	| ex |
	ex := self simpleAddition.
	self assert: (ex acceptVisitor: ExDummyPrintingVisitor new) contents = '2 + 3'
]

{ #category : #tests }
ExpressionPrintingTest >> testAdditionAndMultiplication [
	| ex |
	ex := self additionWithMultiply.
	self assert: (ex acceptVisitor: ExDummyPrintingVisitor new) contents = '2 + 10 * 5'
]

{ #category : #tests }
ExpressionPrintingTest >> testComplexAddition [
	| ex |
	ex := self twoAdditions.
	self assert: (ExDummyPrintingVisitor new visit: ex) contents = '2 + 10 + 5'
]

{ #category : #tests }
ExpressionPrintingTest >> testComplexMultiplication [
	| ex |
	ex := self twoMultiplications.
	self assert: (ex acceptVisitor: ExDummyPrintingVisitor new) contents = '2 * 10 * 5'
]

{ #category : #tests }
ExpressionPrintingTest >> testMultiplication [

	self assert: (ExDummyPrintingVisitor new visit: self simpleMultiplication) contents = '2 * 3'
]

{ #category : #tests }
ExpressionPrintingTest >> testMultiplicationAndAddition [

	self assert: (ExDummyPrintingVisitor new 
								visit: self multiplyWithAddition) contents = '2 * ( 10 + 5 )'.
	self assert: (ExDummyPrintingVisitor new 
								visit: self multiplyWithTwoAdditions) contents = '( 1 + 2 ) * ( 10 + 5 )'.

]

{ #category : #tests }
ExpressionPrintingTest >> testSimpleNumber [
	self assert: (ExDummyPrintingVisitor new visit: self numberTwo) contents = '2'
]
