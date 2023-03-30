# Naming Conventions

- Must add "\_test" suffix to filenames. This tell the Go test framework know it's a test file and will not be compiled in production builds.
- Prefix tests with "Test" so Go test framework knows what method/functions are tests.
- Accept one parameter - \*tseting.T
- Same package name in test file is for whitebox tests (E.g. package main vs package main_test). Since it's part of the same package, we have access to all of
- Blackbox tests, add "\_test" suffix to package. This makes it so the tests do not have access to all the entities within the package and you can accurately test all the APIs exposed from your package.

# Integration Tests

Typically, test file names would be "message_test.go". In case of integration tests, we would not do this. We would probably have another directory or package to contain those tests in since integration tests will cover a wide range of test coverage.

# Test Types

## Test

- Unit
- Integration
- End to End

## Benchmark

- Performance

## Example

- Documentation

# Testing-related Packages

## Standard library

### testing package

### testing/quick

Designed to simplify black box testing. E.g. writing a test where you don't need to know the internals of a package.

### testing/iotest

Contains several readers & writers that are designed to excercise very specific aspects of readers & writers.

### net/http/httptest

Valuable APIs to simulate requests. Response recorders and assertions. Setup test servers using HTTP requests to endpoints.

## Third party packages

### Testify

github.com/stretchrcom/testify

### Ginkgo

github.com/onsi/ginkgo

### GoConvey

goconvey.co

### httpexpect

github.com/gavv/httpexpect

### gomock

code.google.com/p/gomock

### go-sqlmock

github.com/DATA-DOG/go-sqlmock

# Reporting Test Failures

1. Immediate failure: Exit the test immediately. Does not exit the entire suite.

```
t.FailNow()

t.Fatal(args ...interface{})

t.Fatalf(format strings, args ...interface{})
```

2. Non-immesdiate failure: Indicate that a failure occured, but test function will continue to check the remaining assertions.

```
t.Fail()

t.Error(args ...interface{})

t.Errorf(format string, args ...interface{})
```

# Useful Functions
1. `t.Log`, `t.Logf`
2. Helper
3. Skip, Skipf, and SkipNow
4. Run
5. Parallel
golang.org/pkg/testing

# Commands

1. Run all tests `go test ./...`
1. Run tests for a specific package `go test ./lib/messages`
1. Run verbose logs `go test ./... -v`
1. Run tests by RegExp `go test ./... -run Greet`
1. Run tests with profiling `go test ./... -cover`
1. Run tests with specific profiling `go test ./... -coverprofile cover.out -covermode count` && `go test ./... -coverprofile cover.out` (Possible alternatives: `go tool cover -html cover.out` )

## Benchmarks
1. `go test -bench .` Run all tests, including benchmark tests
1. `go test -bench . -benchtime 10s` Run benchmark tests, targeting the specified time
1. `go test -benchmem` Report memory allocation statistics for benchmarks
1. `go test -trace {trace.out}` Record execution trace to  {trace.out} for analysis
1. `go test -{type}profile {file}` Generate profile of reqruedted type: block, cover, cpu, mem, mutex
1. `go test -bench . -memprofile profile.out` && `go tool pprof profile.out`
