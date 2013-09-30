require 'spec_helper'

describe Digits do 

	class DummyClass
  	end

	let(:digit) { Digits.new }

	before do 
		@dummy = DummyClass.new
    	@dummy.extend Digits
		#stub YML for digits 
		@dummy.stub(:load_digits_yaml).and_return({ 3 => "hunderd", 4 => "thousand", 6 => "lacs", 7 => "million" })
	end

	describe '#get_max_digit' do 
		it 'reads the  digits and returns the max present in the YAML' do 
			max_value = @dummy.get_max_digit(1)
			expect(max_value).to eq 0

			max_value = @dummy.get_max_digit(3)
			expect(max_value).to eq 3

			max_value = @dummy.get_max_digit(100)
			expect(max_value).to eq 7
		end
	end

	describe '#get_digit_value' do 
		it 'returns the string at that positions' do 
			expect(@dummy.get_digit_value(3)).to eq 'hunderd'
			expect(@dummy.get_digit_value(4)).to eq 'thousand'
			expect(@dummy.get_digit_value(6)).to eq 'lacs'
			expect(@dummy.get_digit_value(7)).to eq 'million'
			expect(@dummy.get_digit_value(10)).to eq ''
		end
	end
end