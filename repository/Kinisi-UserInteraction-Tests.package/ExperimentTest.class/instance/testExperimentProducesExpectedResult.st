tests
testExperimentProducesExpectedResult

	| definition experiment expectedSteps |
	definition := ExperimentDefinition
		startingAt: 0
		changingWith: [:currentStep :currentState | currentState + 1 ]
		simulatingBasedOn: (BANANASteppingMode delta: 1 until: 5)
		observingBasedOn: (ObservationDefinition disableWith: (PluggableObservationInterface processWith: [:observation | ])).
	experiment := Experiment basedOn: definition.

	experiment run.

	expectedSteps := (0 to: 5) collect: [:step | SimulationStepResult at: step with: step ]. 
	experiment result withTimeAndStateDo: [:step :state |
		expectedSteps
			detect: [:result | result time = step ]
			ifFound: [:matchingResult | self assert: matchingResult value equals: state ]
			ifNone: [ self fail ] ]