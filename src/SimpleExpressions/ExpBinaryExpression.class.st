"
I'm a binary expression with two childrens.
"
Class {
	#name : #ExpBinaryExpression,
	#superclass : #ExpExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #SimpleExpressions
}

{ #category : #accessing }
ExpBinaryExpression >> left [
	^ left
]

{ #category : #accessing }
ExpBinaryExpression >> left: anObject [
	left := anObject.
	anObject parent: self.
]

{ #category : #accessing }
ExpBinaryExpression >> priority [

	^ 0
]

{ #category : #accessing }
ExpBinaryExpression >> right [
	^ right
]

{ #category : #accessing }
ExpBinaryExpression >> right: anObject [
	right := anObject.
	anObject parent: self
]

{ #category : #testing }
ExpBinaryExpression >> shouldBeSurrounded [
	self parent isNil ifTrue: [ ^ false ].
	^ self parent priority > self priority
]
