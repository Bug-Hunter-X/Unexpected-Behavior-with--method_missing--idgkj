# Ruby `method_missing` Bug

This repository demonstrates a potential issue with Ruby's `method_missing` method.  The `method_missing` method provides a way to dynamically handle calls to methods that are not explicitly defined in a class. While this is powerful, it can also mask errors if not used cautiously.  The example code shows how an unhandled method call can lead to unexpected results.

## Bug

The provided Ruby code uses `method_missing` to intercept all calls to non-existent methods.  This is problematic because it might hide real errors. A developer might assume a method exists when it doesn't, leading to debugging challenges.

## Solution

A more robust approach is to implement more specific error handling or to use a different mechanism, depending on the intended behavior.  For instance, you might raise a `NoMethodError` to indicate that the intended method is missing, preventing the problem of silently ignoring errors.