asserting
assertValid:  targetSize 

	targetSize < self minimunSize
		ifTrue: [ RenderingError signal: ('Size cannot be minor than the minimun size (<1s>)' expandMacrosWith: self minimunSize asString) ]