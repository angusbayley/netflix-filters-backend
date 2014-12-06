require 'spec_helper'

describe ImdbController do

  describe "GET 'top250'" do
    it "returns http success" do
      get 'top250'
      response.should be_success
    end
  end

end
