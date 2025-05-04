# frozen_string_literal: true

require_relative '../sum_array_elements'

RSpec.describe 'sum' do
  [true, false].each do |use_native_method|
    test_cases = [
      [[1, 2, 3], 6],
      [[-1, -2, -3], -6],
      [[0, 0, 0], 0],
      [[1.5, 2.5, 3.5], 7.5],
      [[], 0],
      [nil, 0]
    ]

    test_cases.each do |array, expected_sum|
      it "returns #{expected_sum} for array #{array} #{use_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(sum(array, use_native_method: use_native_method)).to eq(expected_sum)
      end
    end

    it 'raises ArgumentError for non-numeric elements' do
      expect { sum([1, 'two', 3], use_native_method: use_native_method) }.to raise_error(ArgumentError)
    end

    it 'raises ArgumentError for invalid input types' do
      expect { sum('not an array', use_native_method: true) }.to raise_error(ArgumentError).with_message('Input must be an array')
      expect { sum(123, use_native_method: false) }.to raise_error(ArgumentError).with_message('Input must be an array')
    end
  end
end
