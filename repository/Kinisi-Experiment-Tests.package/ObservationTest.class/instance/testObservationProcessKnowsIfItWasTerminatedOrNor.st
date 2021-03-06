tests
testObservationProcessKnowsIfItWasTerminatedOrNor

	observationProcess := KinisiObservation on: source with: interfaces waiting: delay.
	
	self deny: observationProcess isTerminated.
	
	observationProcess play.
	self deny: observationProcess isTerminated.

	observationProcess pause.
	self deny: observationProcess isTerminated.
	
	observationProcess terminate.
	self assert: observationProcess isTerminated.