require 'spec_helper'

describe "medics/index" do
  before(:each) do
    assign(:medics, [
      stub_model(Medic),
      stub_model(Medic)
    ])
  end

  it "renders a list of medics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
