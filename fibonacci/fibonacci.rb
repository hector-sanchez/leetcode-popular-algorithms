# frozen_string_literal: true

# Find the Nth number in the Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, …
def fibonacci(number, recursive: true)
  raise ArgumentError, 'input must be an integer' unless number.is_a?(Integer)
  raise ArgumentError, 'input must be positive' if number.negative?
  return 0 if number.zero?

  if recursive
    fibonacci_with_recursion(number)
  else
    fibonacci_without_recursion(number)
  end
end

def generate_fibonacci_sequence(length)
  raise ArgumentError, 'length must be a positive integer' unless length.is_a?(Integer) && length.positive?

  sequence = []
  (0...length).each do |i|
    sequence << fibonacci(i, recursive: true)
  end
  sequence
end

private

def fibonacci_with_recursion(number)
  return number if number < 2

  fibonacci_with_recursion(number - 1) + fibonacci_with_recursion(number - 2)
end

def fibonacci_without_recursion(number)
  a = 0
  b = 1

  (2..number).each do
    a, b = b, a + b
  end

  b
end
