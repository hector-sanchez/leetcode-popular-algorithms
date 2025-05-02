# frozen_string_literal: true

require_relative '../binary_search'

RSpec.describe 'search' do
  [true, false].each do |use_native_method|
    test_cases = [
      [[1, 2, 3, 4, 5], 3, 2],
      [[1, 2, 3, 4, 5], 6, nil],
      [[1, 2, 3, 4, 5], nil, nil],
      #[[], 1, nil],
      #[[1], 1, 0],
      #[[1], 2, nil],
      #[[-5, -3, -1, 0, 2], -3, 1],
      #[[-5, -3, -1, 0, 2], -6, nil]
    ]

    test_cases.each do |array, target, expected_index|
      it "finds index of #{target} in #{array} #{use_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(search(array, target, use_native_method: use_native_method)).to eq(expected_index)
      end
    end
  end
end
