# frozen_string_literal: true

def palindrome?(str, use_native_method: true)
  if use_native_method
    _palindrome_with_native_method?(str)
  else
    _palindrome_without_native_method?(str)
  end
end

private

def _palindrome_with_native_method?(str)
  return false if str.nil?

  str == str.reverse
end

def _palindrome_without_native_method?(str)
  return false if str.nil?

  left = 0
  right = str.length - 1

  while left < right
    return false if str[left] != str[right]

    left += 1
    right -= 1
  end

  true
end
