initialization
setModelBeforeInitialization: universeWorkbench

	super setModelBeforeInitialization: universeWorkbench.
	workbench := universeWorkbench.
	self initializeModeOptions