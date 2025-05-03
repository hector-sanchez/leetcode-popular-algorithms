# frozen_string_literal: true
require 'byebug'

def anagram?(text1, text2, use_native_method: true)
  return false if text1.nil? || text2.nil?
  return false if text1.length != text2.length

  if use_native_method
    _anagram_with_native_method?(text1, text2)
  else
    _anagram_without_native_method?(text1, text2)
  end
end

private

def _anagram_with_native_method?(text1, text2)
  text1.chars.sort == text2.chars.sort
end

def _anagram_without_native_method?(text1, text2)
  char_count = Hash.new(0)

  text1.each_char do |c|
    char_count[c] += 1
  end

  text2.each_char do |c|
    return false unless char_count[c].positive?

    char_count[c] -= 1
  end

  true
end
