exclusion
excluded: aValue by: aConstraint
	"Used by ExclusionConstraint to test whether it is worth checking aValue for exclusion. If a previous value has already failed, the Empty stream will just throw this check out."

	^ ( self walk: aValue) skExcludedBy: aConstraint in: self