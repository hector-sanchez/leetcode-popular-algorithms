# frozen_string_literal: true

require_relative '../palindrome'

RSpec.describe 'palindrome' do
  %i[palindrome_with_native_method? palindrome_without_native_method?].each do |method|
    test_cases = [
      ['racecar', true],
      ['hello', false],
      [nil, false],
      ['true', false]
    ]

    test_cases.each do |input, expected_output|
      it "checks if '#{input}' is a palindrome using #{method}" do
        expect(send(method, input)).to eq(expected_output)
      end
    end
  end
end
