require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :avatar => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :suburb => "MyString",
      :state => "MyString",
      :postcode => 1,
      :facebook => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[avatar]"

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[address]"

      assert_select "input[name=?]", "profile[suburb]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[postcode]"

      assert_select "input[name=?]", "profile[facebook]"
    end
  end
end
