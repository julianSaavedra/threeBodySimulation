test
testElementInViewHasAsModelTheParticleOfTheRenderedUniverse

	| universeDraft particleDraft renderer |
	universeDraft := UniverseObservation new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft save.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self
		assert: view elements first model particleName
		equals: particleDraft particleName