validation
isValidNumberText: aString

	^[ aString asNumber.
		true ] on: Error do: [ :error |
			self openErrorWindowWith: ('<1s> is not a valid number' expandMacrosWith: aString).
			false ]