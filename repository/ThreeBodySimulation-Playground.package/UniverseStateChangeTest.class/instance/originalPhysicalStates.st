tests
originalPhysicalStates

	| originalStateA originalStateB |
	originalStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource twoKilograms
		in: testResource nullPosition.
	originalStateB := testResource
		physicalStateForParticleNamed: #ParticleB
		with: testResource oneKilogram
		in: (MeasureVector x: 1 with: unitProvider meter).

	^Array with: originalStateA with: originalStateB