require 'rails_helper'

RSpec.describe "reports/show", :type => :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :body_id => "Body",
      :contact_id => 1,
      :site_number => "Site Number",
      :lake_depth => 1.5,
      :county => "County",
      :phone_1 => "Phone 1",
      :phone_2 => "Phone 2",
      :email => "Email",
      :previous_year => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Site Number/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/County/)
    expect(rendered).to match(/Phone 1/)
    expect(rendered).to match(/Phone 2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
  end
end
