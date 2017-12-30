disequality
andDisequality: aDisequalityConstraint
	"After a ConjoinedDisequality has been simplified in its first value using the value just bound to the variable it was attributed to by the unifier, we can construct a new ConjoinedDisequality by just appending the values that this goal would unify. This violates the normal form of the Conjoined constraint in which every lhs is a Var, but since the very next step is applying it to the State using the unifier, we do not need to worry. The only purpose of the normal form is to make it clear which variable the constraint as a whole should be attributed to. That has now been bound, so it is undefined anyway."
	^ aDisequalityConstraint and: left disequality: right