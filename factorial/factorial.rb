# frozen_string_literal: true

def factorial(number, use_native_method: true)
  raise ArgumentError, 'number must be an integer' unless number.is_a?(Integer)
  raise ArgumentError, 'number must be positive' if number.negative?
  return 1 if number <= 1

  if use_native_method
    factorial_with_native_method(number)
  else
    factorial_without_native_method(number)
  end
end

private

def factorial_with_native_method(number)
  (1..number).reduce(1, :*)
end

def factorial_without_native_method(number)
  result = 1
  (2..number).each do |i|
    result *= i
  end

  result
end
