*MessagePack-Pharo-Core
uint16: anInteger
	"Store the given unsigned, 16-bit integer on this (binary) stream."

	(anInteger < 0 or: [ anInteger >= 16r10000 ])
		ifTrue: [ self error: 'outside unsigned 16-bit integer range' ].
	self nextPut: (anInteger byteAt: 2).
	self nextPut: (anInteger byteAt: 1)