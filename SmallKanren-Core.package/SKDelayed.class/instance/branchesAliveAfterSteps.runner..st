debugging
branchesAliveAfterSteps: nSteps runner: aRunner
	"The initial undelay is already 1 step."

	^ (suspendedVars select: [ :v | ((self undelaystep: v runner: aRunner) steps: nSteps - 1 runner: aRunner) isEmptyStream not ]) ifEmpty: [ SKStream failure ] ifNotEmpty: [ :vars | vars delay: state ]