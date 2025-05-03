# frozen_string_literal: true

require_relative '../factorial'

RSpec.describe 'factorial' do
  [true, false].each do |use_native_method|
    test_cases = [
      [0, 1],
      [1, 1],
      [2, 2],
      [3, 6],
      [4, 24],
      [5, 120],
      [6, 720],
      [7, 5040],
      [8, 40_320],
      [9, 362_880],
      [10, 3_628_800]
    ]

    test_cases.each do |input, expected_output|
      it "calculates factorial of #{input} #{use_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(factorial(input, use_native_method: use_native_method)).to eq(expected_output)
      end
    end
  end

  it 'raises ArgumentError for non integer' do
    ['a', nil].each do |input|
      expect { factorial(input, use_native_method: true) }.to raise_error(ArgumentError).with_message('number must be an integer')
      expect { factorial(input, use_native_method: false) }.to raise_error(ArgumentError).with_message('number must be an integer')
    end
  end

  it 'raises ArgumentError for negative input' do
    [-1, -5, -10].each do |input|
      expect { factorial(input, use_native_method: true) }.to raise_error(ArgumentError).with_message('number must be positive')
      expect { factorial(input, use_native_method: false) }.to raise_error(ArgumentError).with_message('number must be positive')
    end
  end
end
