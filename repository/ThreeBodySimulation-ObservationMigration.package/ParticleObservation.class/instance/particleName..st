as yet unclassified
particleName: targetName

	| targetParticleState targetObservation |
	targetParticleState := PhysicalState
		forParticleNamed: targetName
		withMass: particleState mass
		position: particleState position
		velocity: particleState velocity
		andAcceleration: particleState acceleration.
	targetObservation := ParticleObservation over: targetParticleState in: universeObservation.
	
	universeObservation update: self basedOn: targetObservation.
	particleState := targetParticleState