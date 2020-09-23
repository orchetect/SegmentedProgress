# SegmentedProgress

A simple mechanism to display textual percentage bar progress at specified intervals.

Useful to output to the console while running unit tests or debugging, usually while performing a looped/iterated operation that takes some time to complete.

## Usage

```swift
// for example: an iteration where you want to start at 50 and end at 500
// but we want to display progress as a percentage of 0-100%
let counterRange = 50...550

var sp = SegmentedProgress(counterRange,       // our start and end range
                           segments: 20,       // number of divisions between 0-100%
                           roundedToPlaces: 0) // for fraction %'s, round to X digits

// start console text output, without adding a newline
print("Progress: ", terminator: "")

for x in counterRange {
  
  // ** do some work here that takes a bit of time **
  
  // update progress percentage output
  // (this will print the current progress percentage on the same line,
  // but only at specified segment intervals)
  if let spResult = sp.progress(value: x) {
    print(spResult + " ", terminator: "")
  }
  
}

// finally, terminate console output with a newline
print("")
```

Console output:

```
Progress: 0% 5% 10% 15% 20% 25% 30% 35% 40% 45% 50% 55% 60% 65% 70% 75% 80% 85% 90% 95% 100%
```

