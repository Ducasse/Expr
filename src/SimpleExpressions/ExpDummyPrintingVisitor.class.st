"
a simple printer of expression.
quite limited.

"
Class {
	#name : #ExpDummyPrintingVisitor,
	#superclass : #ExpVisitor,
	#instVars : [
		'stream'
	],
	#category : #SimpleExpressions
}

{ #category : #accessing }
ExpDummyPrintingVisitor >> contents [

	^ stream contents
]

{ #category : #visit }
ExpDummyPrintingVisitor >> emit: aMultiExpression [
	aMultiExpression left acceptVisitor: self.
	stream nextPutAll: ' + '.
	aMultiExpression right acceptVisitor: self
]

{ #category : #'initialize-release' }
ExpDummyPrintingVisitor >> initialize [ 

	super initialize.
	stream := WriteStream on: (String new: 16)
]

{ #category : #visit }
ExpDummyPrintingVisitor >> visitAddition: aMultiExpression [

	(aMultiExpression shouldBeSurrounded)
		ifTrue: [ stream nextPutAll: '( '.
					self emit: aMultiExpression.
					stream nextPutAll: ' )' ]
		ifFalse: [  self emit: aMultiExpression ]
]

{ #category : #visit }
ExpDummyPrintingVisitor >> visitMultiplication: aMultiExpression [

	aMultiExpression left acceptVisitor: self.
	stream nextPutAll: ' * '.
	aMultiExpression right acceptVisitor: self.
]

{ #category : #visit }
ExpDummyPrintingVisitor >> visitNumber: aNumberExpression [

	stream nextPutAll: aNumberExpression value printString
]
