# Popular Algorithms in Ruby

A collection of popular computer science algorithms implemented in Ruby with comprehensive test coverage using RSpec. Each algorithm includes both native Ruby method implementations and custom implementations for educational purposes.

## Table of Contents

- [Overview](#overview)
- [Algorithms Implemented](#algorithms-implemented)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Running Tests](#running-tests)
- [Algorithm Details](#algorithm-details)

## Overview

This repository contains Ruby implementations of fundamental computer science algorithms. Each algorithm is implemented in two ways:
- Using native Ruby methods (when applicable)
- Using custom logic for educational purposes

All implementations include comprehensive test suites using RSpec.

## Algorithms Implemented

### Array Operations
- **Two Sum** - Find two indices whose values add up to a target
- **Remove Duplicate Elements** - Remove duplicate elements from an array
- **Sum Array Elements** - Calculate the sum of all elements in an array

### String Operations
- **Anagram** - Check if two strings are anagrams
- **Palindrome** - Check if a string is a palindrome
- **Reverse String** - Reverse a string
- **Character Occurrences Counter** - Count occurrences of a character in a string

### Search Algorithms
- **Binary Search** - Search for an element in a sorted array

### Sorting Algorithms
- **Merge Sort** - Merge and sort two arrays

### Mathematical Operations
- **Factorial** - Calculate factorial of a number
- **Fibonacci** - Calculate Fibonacci numbers and sequences
- **FizzBuzz** - Classic FizzBuzz implementation

### Finder Operations
- **Min and Max** - Find minimum and maximum values in an array
- **First Non-Repeating Character** - Find the first non-repeating character in a string

## Project Structure

```
├── anagram/
│   ├── anagram.rb
│   └── spec/
├── array/
│   ├── remove_duplicate_elements.rb
│   ├── sum_array_elements.rb
│   └── spec/
├── binary_search/
│   ├── binary_search.rb
│   └── spec/
├── char_occurrences_counter/
│   ├── count_char_occurrences.rb
│   └── spec/
├── factorial/
│   ├── factorial.rb
│   └── spec/
├── fibonacci/
│   ├── fibonacci.rb
│   └── spec/
├── finder/
│   ├── min_and_max/
│   └── non_repeating_chars/
├── fizzbuzz/
│   ├── fizzbuzz.rb
│   └── spec/
├── merge_sort/
│   └── spec/
├── palindrome/
│   ├── palindrome.rb
│   └── spec/
├── reverse_string/
│   ├── reverse_string.rb
│   └── spec/
├── sorting/
│   ├── merge_sort.rb
│   └── spec/
├── two_sum/
│   ├── two_sum.rb
│   └── spec/
└── spec/
    └── spec_helper.rb
```

## Getting Started

### Prerequisites

- Ruby (version 2.7 or higher recommended)
- RSpec gem for running tests

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd popular_algorithms
```

2. Install dependencies:
```bash
gem install rspec
gem install byebug  # for debugging
```

## Running Tests

### Run all tests:
```bash
rspec
```

### Run tests for a specific algorithm:
```bash
rspec two_sum/spec/two_sum_spec.rb
rspec factorial/spec/factorial_spec.rb
rspec fibonacci/spec/fibonacci_spec.rb
```

### Run tests with documentation format:
```bash
rspec --format documentation
```

## Algorithm Details

### Two Sum
**File:** [`two_sum/two_sum.rb`](two_sum/two_sum.rb)

Finds two indices in an array whose values add up to a target sum.
- Time Complexity: O(n)
- Space Complexity: O(n)

```ruby
two_sum([2, 7, 11, 15], 9) # => [0, 1]
```

### Anagram
**File:** [`anagram/anagram.rb`](anagram/anagram.rb)

Checks if two strings are anagrams of each other.
- Time Complexity: O(n log n) with native method, O(n) without
- Space Complexity: O(n)

```ruby
anagram?('listen', 'silent') # => true
```

### Palindrome
**File:** [`palindrome/palindrome.rb`](palindrome/palindrome.rb)

Checks if a string reads the same forwards and backwards.
- Time Complexity: O(n)
- Space Complexity: O(1) without native method

```ruby
palindrome?('racecar') # => true
```

### Factorial
**File:** [`factorial/factorial.rb`](factorial/factorial.rb)

Calculates the factorial of a number.
- Time Complexity: O(n)
- Space Complexity: O(1)

```ruby
factorial(5) # => 120
```

### Fibonacci
**File:** [`fibonacci/fibonacci.rb`](fibonacci/fibonacci.rb)

Calculates Fibonacci numbers with both recursive and iterative approaches.
- Time Complexity: O(2^n) recursive, O(n) iterative
- Space Complexity: O(n) recursive, O(1) iterative

```ruby
fibonacci(6) # => 8
generate_fibonacci_sequence(7) # => [0, 1, 1, 2, 3, 5, 8]
```

### Binary Search
**File:** [`binary_search/binary_search.rb`](binary_search/binary_search.rb)

Searches for an element in a sorted array.
- Time Complexity: O(log n)
- Space Complexity: O(1)

```ruby
search([1, 2, 3, 4, 5], 3) # => 2
```

### FizzBuzz
**File:** [`fizzbuzz/fizzbuzz.rb`](fizzbuzz/fizzbuzz.rb)

Classic FizzBuzz implementation.
- Time Complexity: O(1)
- Space Complexity: O(1)

```ruby
fizzbuzz(15) # => "FizzBuzz"
fizzbuzz(3)  # => "Fizz"
fizzbuzz(5)  # => "Buzz"
```

## Features

- **Dual Implementations**: Most algorithms include both native Ruby method and custom implementations
- **Comprehensive Testing**: Full RSpec test coverage for all algorithms
- **Error Handling**: Proper argument validation and error handling
- **Documentation**: Clear code documentation and examples
- **Performance Considerations**: Different approaches for educational comparison

## Contributing

Feel free to contribute by:
1. Adding new algorithms
2. Improving existing implementations
3. Adding more test cases
4. Improving documentation

## License

This project is available for educational purposes.
