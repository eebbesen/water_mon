require 'rails_helper'

RSpec.describe "reports/new", :type => :view do
  before(:each) do
    assign(:report, Report.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :body_id => "MyString",
      :contact_id => 1,
      :site_number => "MyString",
      :lake_depth => 1.5,
      :county => "MyString",
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :email => "MyString",
      :previous_year => false
    ))
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do

      assert_select "input#report_first_name[name=?]", "report[first_name]"

      assert_select "input#report_last_name[name=?]", "report[last_name]"

      assert_select "input#report_body_id[name=?]", "report[body_id]"

      assert_select "input#report_contact_id[name=?]", "report[contact_id]"

      assert_select "input#report_site_number[name=?]", "report[site_number]"

      assert_select "input#report_lake_depth[name=?]", "report[lake_depth]"

      assert_select "input#report_county[name=?]", "report[county]"

      assert_select "input#report_phone_1[name=?]", "report[phone_1]"

      assert_select "input#report_phone_2[name=?]", "report[phone_2]"

      assert_select "input#report_email[name=?]", "report[email]"

      assert_select "input#report_previous_year[name=?]", "report[previous_year]"
    end
  end
end
