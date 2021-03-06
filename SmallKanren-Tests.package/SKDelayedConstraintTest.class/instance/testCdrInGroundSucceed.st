cdrIn
testCdrInGroundSucceed
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := (x === 1 cons) & (x car: 1 cdrIn: [ :d | SKGoal succeed ]) .
	s := g run: SKState new.
	self deny: s isDelayed.
	self assert: s => x equals: 1 cons