require 'spec_helper'

describe AssessmentsController, :type => :request do
  describe "GET index" do

    it 'should be success' do 
      get :index
      expect(response).to be_success
      expect(response).to render_template("index")
    end
  end

  describe "POST convert" do 
    it 'should convert the number to string' do 
      post :convert, :number => '123'
      expect(response).to be_success

      expect(assigns(:input_integer)).to eq('one hundred and twenty-three')
    end

    it 'should response with errors for bad input' do 
      post :convert, :number => 'abc'
      expect(response).to be_success

      expect(assigns(:input_integer)).to eq('should be a valid number')
    end
  end
end

