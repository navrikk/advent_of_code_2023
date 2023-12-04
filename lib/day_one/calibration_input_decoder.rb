class CalibrationInputDecoder
  def self.process(input)
    CalibrationInputDecoder.new.process(input)
  end

  def process(input)
    first_digit = ''
    second_digit = ''

    input.each_char do |char|
      next unless number?(char)

      first_digit = char if first_digit.empty?

      second_digit = char
    end
    Integer(first_digit + second_digit)
  end

  private

  def number?(character)
    !!Integer(character) rescue false
  end
end
