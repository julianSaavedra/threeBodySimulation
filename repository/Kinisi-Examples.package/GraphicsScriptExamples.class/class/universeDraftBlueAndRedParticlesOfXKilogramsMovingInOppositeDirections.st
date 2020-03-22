data examples
universeDraftBlueAndRedParticlesOfXKilogramsMovingInOppositeDirections

	| universeDraft unitProvider blueDraft redDraft oneMeterInXPosition oneMeterPerSecondVelocity oneTon |
	unitProvider := UnitProvider soleInstance.
	
	oneMeterInXPosition := MeasureVector x: 1 with: unitProvider meter.
	oneMeterPerSecondVelocity := MeasureVector y: 1.29 with: unitProvider standardVelocityUnit.
	"oneMeterPerSecondVelocity := MeasureVector y: 1.82678406 with: unitProvider standardVelocityUnit."
	oneTon := unitProvider kilogram with: 1e11.
	
	universeDraft := UniverseObservation new.
	blueDraft := universeDraft newParticleObservation.
	blueDraft
		color: Color blue;
		mass: oneTon;
		position: oneMeterInXPosition;
		velocity: oneMeterPerSecondVelocity;
		save.
	redDraft := universeDraft newParticleObservation.
	redDraft
		color: Color red;
		mass: oneTon;
		position: oneMeterInXPosition * -1;
		velocity: oneMeterPerSecondVelocity * -1;
		save.
		
	^universeDraft