require 'fixnum'
class AssessmentsController < ApplicationController

	def convert
		@number = params[:number]
		@number = Integer(@number) rescue nil
		if @number == nil
			@input_integer = 'should be a valid number'
		else
			@input_integer = @number.convert_to_string
		end
		render :index
	end
end
