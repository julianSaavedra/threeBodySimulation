instance creation
onStartDo: startAction processWith: monitoringAction andWhenFinishedDo: finishAction

	^self
		onStartDo: startAction
		processWith: monitoringAction
		andWhenFinishedDo: finishAction
		choosingDisplayWith: [:displayProvider | ]
