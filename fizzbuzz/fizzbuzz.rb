# frozen_string_literal: true

# rubocop:disable Metrics/CyclomaticComplexity
def fizzbuzz(number)
  return 'Invalid input' if number.nil? || !number.is_a?(Integer) || number.negative?
  return 'FizzBuzz' if (number % 15).zero?
  return 'Fizz' if (number % 3).zero?
  return 'Buzz' if (number % 5).zero?
  return '0' if number.zero?

  number.to_s
end
# rubocop:enable Metrics/CyclomaticComplexity
