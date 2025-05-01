# frozen_string_literal: true

require_relative '../reverse_string'

RSpec.describe 'reverse_string' do
  %i[reverse_with_native_method reverse_without_native_method].each do |method|
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
      it "reverses '#{input}' to '#{expected_output}' using #{method}" do
        expect(send(method, input)).to eq(expected_output)
      end
    end
  end
end
