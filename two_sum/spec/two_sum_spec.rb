# frozen_string_literal: true

require_relative '../two_sum'

RSpec.describe 'two_sum' do
  test_cases = [
    [[2, 7, 11, 15], 9, [0, 1]],
    [[3, 2, 4], 6, [1, 2]],
    [[3, 3], 6, [0, 1]],
    [[-1, -2, -3, -4, -5], -8, [2, 4]],
    [[0, 4, 3, 0], 0, [0, 3]],
    [[1], 1, []]
  ]

  test_cases.each do |nums, target, expected_output|
    it "returns #{expected_output} for nums: #{nums} and target: #{target}" do
      expect(two_sum(nums, target)).to eq(expected_output)
    end
  end

  it 'raises ArgumentError for nil or empty input' do
    expect { two_sum(nil, 5) }.to raise_error(ArgumentError)
    expect { two_sum([], 5) }.to raise_error(ArgumentError)
    expect { two_sum([1], nil) }.to raise_error(ArgumentError)
  end

  it 'returns an empty array for inputs that do not have a valid pair' do
    expect(two_sum([1, 2, 3], 7)).to eq([])
    expect(two_sum([5, 5, 5], 10)).to eq([0, 1])
    expect(two_sum([1, 2, 3], 10)).to eq([])
  end
end
