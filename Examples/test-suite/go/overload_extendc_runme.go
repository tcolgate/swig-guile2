package main

import "./overload_extendc"

func main() {
	f := overload_extendc.NewFoo()
	if f.Test(3) != 1 {
		panic(0)
	}
	if f.Test("hello") != 2 {
		panic(0)
	}
	if f.Test(float64(3.5), float64(2.5)) != 3 {
		panic(0)
	}
	if f.Test("hello", 20) != 1020 {
		panic(0)
	}
	if f.Test("hello", 20, 100) != 120 {
		panic(0)
	}

	// C default args
	if f.Test(f) != 30 {
		panic(0)
	}
	if f.Test(f, 100) != 120 {
		panic(0)
	}
	if f.Test(f, 100, 200) != 300 {
		panic(0)
	}
}
