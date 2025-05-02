# frozen_string_literal: true

require_relative '../palindrome'

RSpec.describe 'palindrome' do
  [true, false].each do |uses_native_method|
    test_cases = [
      ['racecar', true],
      ['hello', false],
      [nil, false],
      ['true', false]
    ]

    test_cases.each do |input, expected_output|
      it "checks if '#{input}' is a palindrome #{uses_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(palindrome?(input, use_native_method: uses_native_method)).to eq(expected_output)
      end
    end
  end
end
