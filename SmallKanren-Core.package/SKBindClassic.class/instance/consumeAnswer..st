subclassresponsibility
consumeAnswer: aRunner
	<todo>
	"this whole class can probably be merged with other bind variants"
	^ (stream consumeAnswer: aRunner) bind: goal runner: aRunner.