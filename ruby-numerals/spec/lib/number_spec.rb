require 'spec_helper'

describe Number do 

	class DummyClass
	end

	let(:number) { Number.new }

	before do 
		@dummy = DummyClass.new
		@dummy.extend Number
		#stub YML for numbers 
		@dummy.stub(:load_number_yaml).and_return({ 1 => "one", 2 => "two", 3 => "three", 19 => "nineteen" })
	end

	describe '#get_number_value' do 
		it 'reads the integer and returns the string present in the YAML' do 
			number_string = @dummy.get_number_value(1)
			expect(number_string).to eq 'one'

			max_value = @dummy.get_number_value(2)
			expect(max_value).to eq 'two'

			max_value = @dummy.get_number_value(100)
			expect(max_value).to eq nil
		end
	end
end