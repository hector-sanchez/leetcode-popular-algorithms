# frozen_string_literal: true

require_relative '../anagram'

RSpec.describe 'anagram' do
  [true, false].each do |use_native_method|
    test_cases = [
      ['listen', 'silent', true],
      ['triangle', 'integral', true],
      ['apple', 'pale', false],
      ['anagram', 'nagaram', true],
      ['rat', 'car', false],
      [nil, nil, false],
      ['', '', true]
    ]

    test_cases.each do |str1, str2, expected_output|
      it "checks if '#{str1}' and '#{str2}' are anagrams #{use_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(anagram?(str1, str2, use_native_method: use_native_method)).to eq(expected_output)
      end
    end
  end
end
