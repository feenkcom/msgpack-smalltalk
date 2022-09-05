actions
bytesFromString: aString
	(aString isWideString not and: [aString isAsciiString ]) ifTrue: [ ^super bytesFromString: aString].
	^ ZnUTF8Encoder default encodeString: aString