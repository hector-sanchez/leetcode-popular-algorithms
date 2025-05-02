# frozen_string_literal: true

require_relative '../fizzbuzz'

RSpec.describe 'fizzbuzz' do
  test_cases = [
    [1, '1'],
    [2, '2'],
    [3, 'Fizz'],
    [4, '4'],
    [5, 'Buzz'],
    [6, 'Fizz'],
    [15, 'FizzBuzz'],
    [16, '16'],
    [30, 'FizzBuzz'],
    [45, 'FizzBuzz'],
    [100, 'Buzz']
  ]

  test_cases.each do |input, expected_output|
    it "returns '#{expected_output}' for input #{input}" do
      expect(fizzbuzz(input)).to eq(expected_output)
    end
  end
end
