# frozen_string_literal: true

require_relative '../fibonacci'

RSpec.describe 'fibonacci' do
  describe '#fibonacci' do
    [true, false].each do |use_recursion|
      test_cases = [
        [0, 0],
        [1, 1],
        [2, 1],
        [3, 2],
        [4, 3],
        [5, 5],
        [6, 8],
        [7, 13],
        [8, 21],
        [9, 34],
        [10, 55]
      ]

      test_cases.each do |input, expected_output|
        it "calculates the #{input}th Fibonacci number #{use_recursion ? 'using recursion' : 'without recursion'}" do
          expect(fibonacci(input, recursive: use_recursion)).to eq(expected_output)
        end
      end

      it 'raises ArgumentError for non-integer input' do
        ['a', nil].each do |input|
          expect { fibonacci(input, recursive: use_recursion) }.to raise_error(ArgumentError).with_message('input must be an integer')
        end
      end

      it 'raises ArgumentError for negative input' do
        [-1, -5, -10].each do |input|
          expect { fibonacci(input, recursive: use_recursion) }.to raise_error(ArgumentError).with_message('input must be positive')
        end
      end
    end
  end

  describe '#generate_fibonacci_sequence' do
    test_cases = [
      [1, [0]],
      [2, [0, 1]],
      [3, [0, 1, 1]],
      [4, [0, 1, 1, 2]],
      [5, [0, 1, 1, 2, 3]],
      [6, [0, 1, 1, 2, 3, 5]],
      [7, [0, 1, 1, 2, 3, 5, 8]]
    ]

    test_cases.each do |length, expected_sequence|
      it "generates the first #{length} Fibonacci numbers" do
        expect(generate_fibonacci_sequence(length)).to eq(expected_sequence)
      end
    end

    it 'raises ArgumentError for non-integer or negative length' do
      ['a', nil].each do |input|
        expect { generate_fibonacci_sequence(input) }.to raise_error(ArgumentError).with_message('length must be a positive integer')
      end

      [-1, -5].each do |input|
        expect { generate_fibonacci_sequence(input) }.to raise_error(ArgumentError).with_message('length must be a positive integer')
      end
    end
  end
end
