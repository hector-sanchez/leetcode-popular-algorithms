# frozen_string_literal: true

def count_char_occurrences(str, char, use_native_method: true)
  raise ArgumentError unless (['', nil] & [str, char]).empty?

  if use_native_method
    count_with_native_method(str, char)
  else
    count_without_native_method(str, char)
  end
end

private

def count_with_native_method(str, char)
  str.count(char)
end

def count_without_native_method(str, char)
  count = 0
  i = 0

  while i < str.length
    count += 1 if str[i] == char
    i += 1
  end

  count
end
