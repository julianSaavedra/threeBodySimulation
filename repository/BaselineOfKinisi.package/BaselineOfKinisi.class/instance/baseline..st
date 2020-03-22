baselines
baseline: spec

	<baseline>
	
	spec for: #common do:[
		
		spec package: 'Kinisi-Physics-Model' with: [ spec requires: 'Aconcagua' ].
		spec package: 'Kinisi-Physics-Tests' with: [ spec requires: #('Kinisi-Physics-Model' 'Kinisi-General-Model') ].
		
		spec package: 'Kinisi-General-Model' with: [ spec requires: 'Kinisi-Physics-Model' ].
		spec package: 'Kinisi-General-Tests' with: [ spec requires: 'Kinisi-General-Model' ].

		spec package: 'Kinisi-Simulation-Model'.
		spec package: 'Kinisi-Simulation-Tests' with: [ spec requires: 'Aconcagua' ].		
		
		spec package: 'Kinisi-Playground' with: [ spec requires: 'Kinisi-Physics-Model' ].
		spec package: 'Kinisi-PlaygroundUI' with: [ spec requires: 'Kinisi-Physics-Model' ].
		spec package: 'Kinisi-PlaygroundGraphic' with: [ spec requires: #('Aconcagua' 'Roassal2')].		
		spec package: 'Kinisi-Examples' with: [ spec requires: #('Aconcagua' 'Roassal2') ].
		
		spec package: 'Kinisi-Graphics-Model' with: [ spec requires: 'Roassal2' ].
		spec package: 'Kinisi-Graphics-Tests' with: [ spec requires: #('Kinisi-Graphics-Model' 'Roassal2') ].	
		
		spec package: 'Kinisi-UserInteraction-Model'.
		spec package: 'Kinisi-UserInteraction-Presenters' with: [ spec requires: 'Roassal2' ].
		spec package: 'Kinisi-UserInteraction-Menu'.
		spec package: 'Kinisi-UserInteraction-Tests' with: [ spec requires: #('Kinisi-Physics-Model' 'Kinisi-General-Model') ].

		spec baseline: 'Aconcagua' with: [
			spec
				repository: 'github://ba-st/Aconcagua:v7.0.0/repository';
				loads: #('Development') ].

		spec baseline: 'Roassal2' with: [
			spec
				repository: 'github://ObjectProfile/Roassal2/src' ].			
			
		]