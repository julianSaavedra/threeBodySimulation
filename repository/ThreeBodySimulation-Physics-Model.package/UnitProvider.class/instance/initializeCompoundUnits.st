initialize
initializeCompoundUnits

	^unitDictionary
		at: self newtonName
		put:(ProportionalDerivedUnit
				baseUnit: self kilogram * self meter / (self second * self second)
				conversionFactor: 1
				named: self newtonName asString
				sign: 'N')