initialization
initializeButtons

	addButton := self newButton.
	addButton label: 'Add'.
	addButton action: [ self addButtonAction ].
	removeButton := self newButton.
	removeButton label: 'Remove'.
	removeButton action: [ self removeButtonAction ].
	resetButton := self newButton.
	resetButton label: 'Remove all'.
	resetButton action: [ self removeAllButtonAction ]