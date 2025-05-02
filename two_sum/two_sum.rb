# frozen_string_literal: true

require 'byebug'

# Finds two indices whose values add up to the target
def two_sum(nums, target)
  raise ArgumentError if nums.nil? || nums.empty? || target.nil?

  num_indices = {}
  nums.each_with_index do |num, index|
    complement = target - num
    return [num_indices[complement], index] if num_indices.key?(complement)

    num_indices[num] = index
  end

  []
end
