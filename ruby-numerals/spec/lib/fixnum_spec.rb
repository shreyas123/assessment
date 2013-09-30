require 'spec_helper'
require 'fixnum'

describe Fixnum do 

  describe '#convert_to_string' do 
    it 'should return the string representation of a number' do 
      expect(0.convert_to_string).to eq     'zero'
      expect(7.convert_to_string).to eq     'seven'
      expect(42.convert_to_string).to eq    'forty-two'
      expect(2001.convert_to_string).to eq  'two thousand and one'
      expect(1999.convert_to_string).to eq  'nineteen hundred and ninety-nine'
      expect(12345.convert_to_string).to eq 'twelve thousand three hundred and forty-five'
      expect(123.convert_to_string).to eq   'one hundred and twenty-three'
    end
  end
end