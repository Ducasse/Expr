Class {
	#name : #ExpExpressionTest,
	#superclass : #TestCase,
	#category : #SimpleExpressions
}

{ #category : #examples }
ExpExpressionTest >> additionWithMultiply [
	^ ExpAddition new
			left: (ExpNumber value: 2);
			right:
				(ExpMultiplication new
						left: (ExpNumber value: 10);
						right: (ExpNumber value: 5))
]

{ #category : #examples }
ExpExpressionTest >> multiplyWithAddition [
	^ ExpMultiplication new
			left: (ExpNumber value: 2);
			right:
				(ExpAddition new
						left: (ExpNumber value: 10);
						right: (ExpNumber value: 5))
]

{ #category : #examples }
ExpExpressionTest >> multiplyWithTwoAdditions [
	^ ExpMultiplication new
			left: (ExpAddition new
						left: (ExpNumber value: 1);
						right: (ExpNumber value: 2));
			right:
				(ExpAddition new
						left: (ExpNumber value: 10);
						right: (ExpNumber value: 5))
]

{ #category : #examples }
ExpExpressionTest >> numberTwo [
	^ ExpNumber value: 2
]

{ #category : #examples }
ExpExpressionTest >> simpleAddition [
	^ ExpAddition new
		left: (ExpNumber value: 2);
		right: (ExpNumber value: 3)
]

{ #category : #examples }
ExpExpressionTest >> simpleMultiplication [
	^ ExpMultiplication new
		left: (ExpNumber value: 2);
		right: (ExpNumber value: 3)
]

{ #category : #tests }
ExpExpressionTest >> testMultiplyCreation [
	| e |
	e := self simpleMultiplication.
	self assert: e left value = 2
]

{ #category : #tests }
ExpExpressionTest >> testNumberSurrounded [
	| e |
	e := self numberTwo.
	self deny: e shouldBeSurrounded
]

{ #category : #tests }
ExpExpressionTest >> testSurrounded [
	| e |
	e := self multiplyWithAddition.
	self assert: e right shouldBeSurrounded.
	self deny: e left shouldBeSurrounded.
]

{ #category : #examples }
ExpExpressionTest >> twoAdditions [
	^ ExpAddition new
		left: (ExpNumber value: 2);
		right:
				(ExpAddition new
						left: (ExpNumber value: 10);
						right: (ExpNumber value: 5))
]

{ #category : #examples }
ExpExpressionTest >> twoMultiplications [
	^ ExpMultiplication new
		left: (ExpNumber value: 2);
		right:
				(ExpMultiplication new
						left: (ExpNumber value: 10);
						right: (ExpNumber value: 5))
]
