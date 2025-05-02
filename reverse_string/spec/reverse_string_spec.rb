# frozen_string_literal: true

require_relative '../reverse_string'

RSpec.describe 'reverse_string' do
  [true, false].each do |use_native_method|
    test_cases = [
      ['hello', 'olleh'],
      ['hello world', 'dlrow olleh'],
      ['hello, world!', '!dlrow ,olleh'],
      ['', ''],
      [nil, nil],
      ['a', 'a'],
      ['Hello World', 'dlroW olleH'],
      ['!@#$%^&*()', ')(*&^%$#@!'],
      ['12345', '54321']
    ]

    test_cases.each do |input, expected_output|
      it "reverses '#{input}' to '#{expected_output}' #{use_native_method ? 'using native Ruby method' : 'using my own approach'}" do
        expect(reverse_string(input, use_native_method: use_native_method)).to eq(expected_output)
      end
    end
  end
end
