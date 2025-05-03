# frozen_string_literal: true

def sum(array, use_native_method: true)
  return 0 if array.nil?
  raise ArgumentError, 'Input must be an array' unless array.is_a?(Array)
  return 0 if array.empty?
  raise ArgumentError unless array.all? { |element| element.is_a?(Numeric) }

  if use_native_method
    sum_with_native_method(array)
  else
    sum_without_native_method(array)
  end
end

private

def sum_with_native_method(array)
  array.sum
end

def sum_without_native_method(array)
  sum = 0

  array.each do |element|
    sum += element
  end
  sum
end
