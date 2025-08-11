# frozen_string_literal: true

require_relative '../find_first'

RSpec.describe 'First Non-Repeating Character' do
  describe '#first_non_repeating' do
    context 'with valid input' do
      it 'returns the first non-repeating character using native method' do
        expect(first_non_repeating('swiss', use_native_method: true)).to eq('w')
      end

      it 'returns the first non-repeating character without using native method' do
        expect(first_non_repeating('swiss', use_native_method: false)).to eq('w')
      end
    end

    context 'with invalid input' do
      it 'raises ArgumentError for nil input' do
        expect { first_non_repeating(nil) }.to raise_error(ArgumentError)
      end

      it 'raises ArgumentError for non-string input' do
        expect { first_non_repeating(123) }.to raise_error(ArgumentError)
      end

      it 'raises ArgumentError for empty string input' do
        expect { first_non_repeating('') }.to raise_error(ArgumentError)
      end
    end
  end
end
