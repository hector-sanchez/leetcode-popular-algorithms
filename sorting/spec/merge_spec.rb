# frozen_string_literal: true

require_relative '../merge_sort'

RSpec.describe 'Merge Sort' do
  describe '#merge_sort' do
    context 'when both arrays are empty' do
      it 'returns an empty array' do
        expect(merge_sort([], [])).to eq([])
      end
    end

    context 'when one array is empty' do
      it 'returns the other array' do
        expect(merge_sort([1, 2, 3], [])).to eq([1, 2, 3])
        expect(merge_sort([], [4, 5, 6])).to eq([4, 5, 6])
      end
    end

    context 'when both arrays have elements' do
      it 'merges and sorts the arrays correctly using native method' do
        expect(merge_sort([1, 3, 5], [2, 4, 6], use_native_method: true)).to eq([1, 2, 3, 4, 5, 6])
      end
    end
  end
end
