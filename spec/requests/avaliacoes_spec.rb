require 'spec_helper'

describe "Avaliacoes" do
  describe "GET /avaliacoes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get avaliacoes_path
      response.status.should be(200)
    end
  end
end
