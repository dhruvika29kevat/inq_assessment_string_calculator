class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/

    if numbers.start_with?("//")
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers[4..]
    end

    num_list = numbers.split(/#{delimiter}/).map(&:to_i)
    num_list.reject { |n| n > 1000 }.sum
  end
end
