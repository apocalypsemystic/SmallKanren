interpreter
testUnifyVals
	"To reduce test time, the interpreter does not currently support literal operations."

	self
		assert:
			[ :p | 
			interpreter
				unify: 1
				with: 1
				in: #(#(x y z) #()) asConsTree
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: #(#(#(#(x y z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unify: 1
				with: 2
				in: #(#(x y z) #()) asConsTree
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: Cons empty cons cons.