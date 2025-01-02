# Silent Memory Management Errors in Objective-C

This repository demonstrates a subtle bug in Objective-C related to implicit property attributes and ARC (Automatic Reference Counting).  Failure to explicitly specify `strong`, `weak`, or `copy` for properties can lead to unexpected behavior, including retain cycles and premature object deallocation.

The `bug.m` file contains code exhibiting this issue. The `bugSolution.m` file provides the corrected version.

## Problem

In Objective-C, if you declare a property without specifying the memory management attribute, the compiler defaults to a specific behavior. This default behavior might not always be what you expect, especially when dealing with complex object relationships. This can lead to hard-to-debug crashes or memory leaks.

## Solution

Always explicitly specify the memory management attribute (`strong`, `weak`, or `copy`) for your properties. This eliminates ambiguity and makes your code easier to understand and maintain. 