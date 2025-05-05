# frozen_string_literal: true

def merge_sort(array1, array2, use_native_method: true)
  return [] if array1.nil? || array2.nil?
  raise ArgumentError, 'Both inputs must be arrays' unless array1.is_a?(Array) && array2.is_a?(Array)

  if use_native_method
    merge_with_native_method(array1, array2)
  else
    merge_without_native_method(array1, array2)
  end
end

private

def merge_with_native_method(array1, array2)
  (array1 + array2).sort
end

def merge_without_native_method(array1, array2)
  merged_array = []
  i, j = 0, 0

  while i < array1.length && j < array2.length
    if array1[i] <= array2[j]
      merged_array << array1[i]
      i += 1
    else
      merged_array << array2[j]
      j += 1
    end
  end

  # Append any remaining elements from array1 or array2
  merged_array.concat(array1[i..-1]) if i < array1.length
  merged_array.concat(array2[j..-1]) if j < array2.length

  merged_array
end
