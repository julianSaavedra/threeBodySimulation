tests - simulation coupled
testMonitorProcessesAllSimulationStepResultsOfAGivenSimulation

	| monitor simulationStepResults simulation monitoringConsumer |
	simulationStepResults := OrderedCollection new.
	monitor := PluggableObservationInterfaceProcessor
		processWith: [:simulationStepResult | simulationStepResults add: simulationStepResult value ]
		andWhenFinishedDo: [ self monitoringHasFinished ].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	simulation := self
		simulationGeneratingFrom: 0 to: 2
		informingStepsTo: monitoringConsumer.

	self waitUntilMonitoringFinishesWhenRunning: simulation.
	
	self
		assertCollection: simulationStepResults
		hasSameElements: #(0 1 2)