constants
physicalStateWithNonNullVelocity

	^self physicalStateWithVelocity: (self velocityVectorWithAllComponentsWithAmount: 1)