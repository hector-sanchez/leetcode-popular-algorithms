# frozen_string_literal: true

require_relative '../finder'

RSpec.describe 'Finder' do
  describe '#find_max' do
    context 'with native method' do
      it 'returns the maximum value from an array of numbers' do
        expect(find_max([1, 2, 3, 4, 5], use_native_method: true)).to eq(5)
      end

      it 'returns nil for an empty array' do
        expect(find_max([], use_native_method: true)).to be_nil
      end

      it 'returns nil for nil input' do
        expect(find_max(nil, use_native_method: true)).to be_nil
      end
    end

    context 'without native method' do
      it 'returns the maximum value from an array of numbers' do
        expect(find_max([1, 2, 3, 4, 5], use_native_method: false)).to eq(5)
      end

      it 'returns nil for an empty array' do
        expect(find_max([], use_native_method: false)).to be_nil
      end

      it 'returns nil for nil input' do
        expect(find_max(nil, use_native_method: false)).to be_nil
      end
    end
  end

  describe '#find_min' do
    context 'with native method' do
      it 'returns the minimum value from an array of numbers' do
        expect(find_min([1, 2, 3, 4, 5], use_native_method: true)).to eq(1)
      end

      it 'returns nil for an empty array' do
        expect(find_min([], use_native_method: true)).to be_nil
      end

      it 'returns nil for nil input' do
        expect(find_min(nil, use_native_method: true)).to be_nil
      end
    end

    context 'without native method' do
      it 'returns the minimum value from an array of numbers' do
        expect(find_min([1, 2, 3, 4, 5], use_native_method: false)).to eq(1)
      end

      it 'returns nil for an empty array' do
        expect(find_min([], use_native_method: false)).to be_nil
      end

      it 'returns nil for nil input' do
        expect(find_min(nil, use_native_method: false)).to be_nil
      end
    end
  end
end
