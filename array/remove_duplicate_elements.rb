# frozen_string_literal: true

def remove_duplicate_elements(arr, use_native_method: true)
  return [] if arr.nil? || arr.empty?
  raise ArgumentError, 'Input must be an array' unless arr.is_a?(Array)
  raise ArgumentError, 'Array elements must be comparable' unless arr.all? { |element| element.is_a?(Comparable) }
  raise ArgumentError, 'Array elements must not be nil' if arr.any?(&:nil?)

  if use_native_method
    remove_duplicates_with_native_method(arr)
  else
    remove_duplicates_without_native_method(arr)
  end
end

private

def remove_duplicates_with_native_method(arr)
  arr.uniq
end

def remove_duplicates_without_native_method(arr)
  unique_elements = []

  arr.each do |element|
    unique_elements << element unless unique_elements.include?(element)
  end

  unique_elements
end
