require 'rails_helper'

RSpec.describe "qualifications/show", type: :view do
  before(:each) do
    @qualification = assign(:qualification, Qualification.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
