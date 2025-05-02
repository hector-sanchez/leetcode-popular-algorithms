# frozen_string_literal: true

def reverse_string(str, use_native_method: true)
  if use_native_method
    reverse_with_native_method(str)
  else
    reverse_without_native_method(str)
  end
end

private

def reverse_with_native_method(str)
  str&.reverse
end

def reverse_without_native_method(str)
  return if str.nil?

  reversed = ''
  i = str.length - 1

  while i >= 0
    reversed += str[i]
    i -= 1
  end

  reversed
end
