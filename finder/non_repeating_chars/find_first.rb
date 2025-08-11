# frozen_string_literal: true

def first_non_repeating(str, use_native_method: true)
  raise ArgumentError, 'Input must be a string' unless str.is_a?(String)

  if use_native_method
    first_non_repeating_with_native_method(str)
  else
    first_non_repeating_without_native_method(str)
  end
end

def first_non_repeating_with_native_method(str)
  str.chars.find { |char| str.count(char) == 1 }
end

def first_non_repeating_without_native_method(str)
  counts = {}

  str.each_char do |char|
    counts[char] = counts.fetch(char, 0) + 1
  end

  str.each_char do |char| # rubocop:disable Style/CombinableLoops
    return char if counts[char] == 1
  end
end
