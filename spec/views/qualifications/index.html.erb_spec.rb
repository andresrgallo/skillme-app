require 'rails_helper'

RSpec.describe "qualifications/index", type: :view do
  before(:each) do
    assign(:qualifications, [
      Qualification.create!(
        :name => "Name"
      ),
      Qualification.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of qualifications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
