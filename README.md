# Hack Integer Overflow Bug

This repository contains a simple Hack program that demonstrates an integer overflow bug. The bug occurs when the program attempts to perform arithmetic operations on integers that exceed the maximum value that can be stored in a 32-bit integer. This can lead to unexpected behavior, such as negative values being produced when the result of an operation should be positive.

## Bug Description

The `baz` function in the `bug.hack` file demonstrates the overflow error. If the input `x` is large enough, the intermediate results in `bar` and `baz` will exceed the maximum 32-bit integer value, resulting in an overflow.  This leads to an incorrect final result.

## Solution

The solution is to use 64-bit integers, which can store much larger values. The `bugSolution.hack` file shows how this can be done by using the `int64` type instead of the default `int` type.