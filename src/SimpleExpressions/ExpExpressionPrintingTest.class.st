Class {
	#name : #ExpExpressionPrintingTest,
	#superclass : #ExpExpressionTest,
	#category : #SimpleExpressions
}

{ #category : #tests }
ExpExpressionPrintingTest >> testAddition [
	| ex |
	ex := self simpleAddition.
	self assert: (ex acceptVisitor: ExpDummyPrintingVisitor new) contents = '2 + 3'
]

{ #category : #tests }
ExpExpressionPrintingTest >> testAdditionAndMultiplication [
	| ex |
	ex := self additionWithMultiply.
	self assert: (ex acceptVisitor: ExpDummyPrintingVisitor new) contents = '2 + 10 * 5'
]

{ #category : #tests }
ExpExpressionPrintingTest >> testComplexAddition [
	| ex |
	ex := self twoAdditions.
	self assert: (ExpDummyPrintingVisitor new visit: ex) contents = '2 + 10 + 5'
]

{ #category : #tests }
ExpExpressionPrintingTest >> testComplexMultiplication [
	| ex |
	ex := self twoMultiplications.
	self assert: (ex acceptVisitor: ExpDummyPrintingVisitor new) contents = '2 * 10 * 5'
]

{ #category : #tests }
ExpExpressionPrintingTest >> testMultiplication [

	self assert: (ExpDummyPrintingVisitor new visit: self simpleMultiplication) contents = '2 * 3'
]

{ #category : #tests }
ExpExpressionPrintingTest >> testMultiplicationAndAddition [

	self assert: (ExpDummyPrintingVisitor new 
								visit: self multiplyWithAddition) contents = '2 * ( 10 + 5 )'.
	self assert: (ExpDummyPrintingVisitor new 
								visit: self multiplyWithTwoAdditions) contents = '( 1 + 2 ) * ( 10 + 5 )'.

]

{ #category : #tests }
ExpExpressionPrintingTest >> testSimpleNumber [
	self assert: (ExpDummyPrintingVisitor new visit: self numberTwo) contents = '2'
]
