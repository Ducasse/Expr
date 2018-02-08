"
I'm a binary expression with two childrens.
"
Class {
	#name : #ExBinaryExpression,
	#superclass : #Expression,
	#instVars : [
		'right',
		'left'
	],
	#category : #SimpleExpressionSkeleton
}

{ #category : #accessing }
ExBinaryExpression >> left [
	^ left
]

{ #category : #accessing }
ExBinaryExpression >> left: anObject [
	left := anObject.
	anObject parent: self.
]

{ #category : #accessing }
ExBinaryExpression >> priority [

	^ 0
]

{ #category : #accessing }
ExBinaryExpression >> right [
	^ right
]

{ #category : #accessing }
ExBinaryExpression >> right: anObject [
	right := anObject.
	anObject parent: self
]

{ #category : #testing }
ExBinaryExpression >> shouldBeSurrounded [
	self parent isNil ifTrue: [ ^ false ].
	^ self parent priority > self priority
]
