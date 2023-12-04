RSpec.describe Trebuchet do
  describe '#self.solve' do
    context 'for calibration input part one' do
      it 'returns 142' do
        expect(Trebuchet.solve('./spec/day_one/calibration_input_part_one.txt')).to eq(142)
      end
    end
  end
end
