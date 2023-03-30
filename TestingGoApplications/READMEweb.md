# Overview
Proper testing makes your project better because they encourage you to:
1. Apply clean code: write short functions, handle a single task per function, etc.
1. Write extendable and agnostic code through the use of abstractions, interfaces and mocks.
1. Understand the business logic better by testing regular/edge cases and high coverage of these.
1. Avoid legacy, long-untouched and/or unmaintainable code - tests will ease the process of maintaining and verifying changes to code so it doesn't rot.
1. Measure the performance of your code through benchmarks, load tests, etc.

# Performance
1. Avoid reflection
1. Avoid string concatenation
1. Pre-Allocating for slice, map
1. Avoid using interfaces with a single concrete type
1. Using govet