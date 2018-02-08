Class {
	#name : #ExpressionTest,
	#superclass : #TestCase,
	#category : #SimpleExpressionSkeleton
}

{ #category : #examples }
ExpressionTest >> additionWithMultiply [
	^ ExAddition new
			left: (ExNumber value: 2);
			right:
				(ExMultiplication new
						left: (ExNumber value: 10);
						right: (ExNumber value: 5))
]

{ #category : #examples }
ExpressionTest >> multiplyWithAddition [
	^ ExMultiplication new
			left: (ExNumber value: 2);
			right:
				(ExAddition new
						left: (ExNumber value: 10);
						right: (ExNumber value: 5))
]

{ #category : #examples }
ExpressionTest >> multiplyWithTwoAdditions [
	^ ExMultiplication new
			left: (ExAddition new
						left: (ExNumber value: 1);
						right: (ExNumber value: 2));
			right:
				(ExAddition new
						left: (ExNumber value: 10);
						right: (ExNumber value: 5))
]

{ #category : #examples }
ExpressionTest >> numberTwo [
	^ ExNumber value: 2
]

{ #category : #examples }
ExpressionTest >> simpleAddition [
	^ ExAddition new
		left: (ExNumber value: 2);
		right: (ExNumber value: 3)
]

{ #category : #examples }
ExpressionTest >> simpleMultiplication [
	^ ExMultiplication new
		left: (ExNumber value: 2);
		right: (ExNumber value: 3)
]

{ #category : #tests }
ExpressionTest >> testMultiplyCreation [
	| e |
	e := self simpleMultiplication.
	self assert: e left value = 2
]

{ #category : #tests }
ExpressionTest >> testNumberSurrounded [
	| e |
	e := self numberTwo.
	self deny: e shouldBeSurrounded
]

{ #category : #tests }
ExpressionTest >> testSurrounded [
	| e |
	e := self multiplyWithAddition.
	self assert: e right shouldBeSurrounded.
	self deny: e left shouldBeSurrounded.
]

{ #category : #examples }
ExpressionTest >> twoAdditions [
	^ ExAddition new
		left: (ExNumber value: 2);
		right:
				(ExAddition new
						left: (ExNumber value: 10);
						right: (ExNumber value: 5))
]

{ #category : #examples }
ExpressionTest >> twoMultiplications [
	^ ExMultiplication new
		left: (ExNumber value: 2);
		right:
				(ExMultiplication new
						left: (ExNumber value: 10);
						right: (ExNumber value: 5))
]
