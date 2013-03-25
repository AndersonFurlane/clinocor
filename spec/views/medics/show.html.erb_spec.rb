require 'spec_helper'

describe "medics/show" do
  before(:each) do
    @medic = assign(:medic, stub_model(Medic))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
