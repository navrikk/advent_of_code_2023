require_relative 'calibration_input_decoder'

class Trebuchet
  def self.solve(calibration_file_path)
    Trebuchet.new.solve(calibration_file_path)
  end

  def solve(calibration_file_path)
    calibration_input = input_array_from(calibration_file_path)
    calibration_values = 0

    calibration_input.each do |input|
      calibration_values += CalibrationInputDecoder.process(input)
    end
    calibration_values
  end

  private

  def input_array_from(file_path)
    File.readlines(file_path, chomp: true)
  end
end
