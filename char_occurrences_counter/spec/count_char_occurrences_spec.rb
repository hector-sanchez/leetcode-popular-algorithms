# frozen_string_literal: true

require_relative '../count_char_occurrences'

RSpec.describe 'count_char_occurrences' do
  [true, false].each do |use_native_method|
    test_cases = [
      ['hello world', 'l', 3],
      ['hello world', 'o', 2],
      ['hello world', 'x', 0],
      ['a' * 1000, 'a', 1000]
    ]

    test_cases.each do |str, char, expected_count|
      it "counts occurrences of '#{char}' in '#{str}' #{use_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(count_char_occurrences(str, char, use_native_method: use_native_method)).to eq(expected_count)
      end
    end

    it "raises ArgumentError for invalid inputs" do
      expect { count_char_occurrences(nil, 'a', use_native_method: use_native_method) }.to raise_error(ArgumentError)
      expect { count_char_occurrences('', 'a', use_native_method: use_native_method) }.to raise_error(ArgumentError)
      expect { count_char_occurrences('hello', nil, use_native_method: use_native_method) }.to raise_error(ArgumentError)
      expect { count_char_occurrences('hello', '', use_native_method: use_native_method) }.to raise_error(ArgumentError)
    end
  end
end
