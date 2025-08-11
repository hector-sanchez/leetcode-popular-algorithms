# frozen_string_literal: true

def find_max(numbers, use_native_method: true)
  if use_native_method
    find_max_with_native_method(numbers)
  else
    find_max_without_native_method(numbers)
  end
end

def find_min(numbers, use_native_method: true)
  if use_native_method
    find_min_with_native_method(numbers)
  else
    find_min_without_native_method(numbers)
  end
end

private

def find_max_with_native_method(numbers)
  return if numbers.nil? || numbers.empty?

  numbers.max
end

def find_max_without_native_method(numbers)
  return if numbers.nil? || numbers.empty?

  max_value = numbers[0]
  numbers.each do |num|
    max_value = num if num > max_value
  end

  max_value
end

def find_min_with_native_method(numbers)
  return if numbers.nil? || numbers.empty?

  numbers.min
end

def find_min_without_native_method(numbers)
  return if numbers.nil? || numbers.empty?

  min_value = numbers[0]
  numbers.each do |num|
    min_value = num if num < min_value
  end

  min_value
end
