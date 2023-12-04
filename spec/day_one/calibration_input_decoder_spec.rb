RSpec.describe CalibrationInputDecoder do
  describe '#self.process' do
    context 'for `1abc2`' do
      it 'returns 12' do
        expect(CalibrationInputDecoder.process('1abc2')).to eq(12)
      end
    end

    context 'for `pqr3stu8vwx`' do
      it 'returns 38' do
        expect(CalibrationInputDecoder.process('pqr3stu8vwx')).to eq(38)
      end
    end

    context 'for `a1b2c3d4e5f`' do
      it 'returns 15' do
        expect(CalibrationInputDecoder.process('a1b2c3d4e5f')).to eq(15)
      end
    end

    context 'for `treb7uchet`' do
      it 'returns 77' do
        expect(CalibrationInputDecoder.process('treb7uchet')).to eq(77)
      end
    end
  end
end
