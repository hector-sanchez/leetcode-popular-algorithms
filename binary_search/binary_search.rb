# frozen_string_literal: true

def search(nums, target, use_native_method: true)
  return if nums.nil? || nums.empty? || target.nil?

  if use_native_method
    _search_with_native_method(nums, target)
  else
    _search_without_native_method(nums, target)
  end
end

private

def _search_with_native_method(arr, target)
  arr.bsearch_index { |x| x >= target && x == target }
end

def _search_without_native_method(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = left + (right - left) / 2
    return mid if arr[mid] == target

    if arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
end
