class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/

    if numbers.start_with?("//")
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers[4..]
    end

    num_list = numbers.split(/#{delimiter}/).map(&:to_i)

    negatives = num_list.select{ |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_list.reject { |n| n > 1000 }.sum
  end
end
