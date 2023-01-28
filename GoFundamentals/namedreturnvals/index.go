package namedreturnvals

func placeHolderNamedReturnValues(l, r int) (result int, ok bool) {
	if r == 0 {
		return // 0, false
	}

	result = l / r
	ok = true
	return
}
