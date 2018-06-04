require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :avatar => "Avatar",
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :suburb => "Suburb",
      :state => "State",
      :postcode => 2,
      :facebook => "Facebook"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Facebook/)
  end
end
