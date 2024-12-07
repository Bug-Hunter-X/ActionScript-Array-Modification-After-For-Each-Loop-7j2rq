# ActionScript Array Modification After For Each Loop

This repository demonstrates an uncommon issue in ActionScript 3.0 related to modifying arrays after iterating through them using a `for each` loop.  The issue arises from how the `for each` loop interacts with array indexing.

## Bug Description

When you modify an array's length after iterating through it with `for each`, subsequent attempts to access elements using array indexing might produce unexpected results.  This is because `for each` loop iterates over the values, not the indices.  The indices are re-evaluated during the next iteration.

## How to Reproduce

1. Clone this repository.
2. Open `bug.as` in an ActionScript 3.0 editor (e.g., FlashDevelop).
3. Run the code. You'll observe that the output is unexpected after modifying the array using index assignment.

## Solution

The solution involves using traditional `for` loops to modify the array when precise index-based operations are needed. This gives you complete control over index access.

See `bugSolution.as` for the corrected code.

## Additional Notes

This issue highlights a subtle but important difference between how `for each` loops and traditional `for` loops work with arrays in ActionScript 3.0.  Always be mindful of this when performing array modifications after using a `for each` loop.