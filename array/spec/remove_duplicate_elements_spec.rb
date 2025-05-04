# frozen_string_literal: true

require_relative '../remove_duplicate_elements'

RSpec.describe 'remove_duplicate_elements' do
  context 'with native method' do
    it 'removes duplicate elements from an array of numbers' do
      expect(remove_duplicate_elements([1, 2, 2, 3, 4, 4, 5], use_native_method: true)).to eq([1, 2, 3, 4, 5])
    end

    it 'returns an empty array for an empty input array' do
      expect(remove_duplicate_elements([], use_native_method: true)).to eq([])
    end

    it 'returns an empty array for an empty input array' do
      expect(remove_duplicate_elements(nil, use_native_method: true)).to eq([])
    end

    it 'raises an error for non-array input' do
      expect { remove_duplicate_elements('not an array', use_native_method: true) }.to raise_error(ArgumentError)
    end

    it 'raises an error for array with nil elements' do
      expect { remove_duplicate_elements([1, nil, 2], use_native_method: true) }.to raise_error(ArgumentError)
    end
  end

  context 'without native method' do
    it 'removes duplicate elements from an array of numbers' do
      expect(remove_duplicate_elements([1, 2, 2, 3, 4, 4, 5], use_native_method: false)).to eq([1, 2, 3, 4, 5])
    end

    it 'returns an empty array for an empty input array' do
      expect(remove_duplicate_elements([], use_native_method: false)).to eq([])
    end

    it 'returns an empty array for an empty input array' do
      expect(remove_duplicate_elements(nil, use_native_method: false)).to eq([])
    end

    it 'raises an error for non-array input' do
      expect { remove_duplicate_elements('not an array', use_native_method: false) }.to raise_error(ArgumentError)
    end

    it 'raises an error for array with nil elements' do
      expect { remove_duplicate_elements([1, nil, 2], use_native_method: false) }.to raise_error(ArgumentError)
    end
  end
end
