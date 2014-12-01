require 'rails_helper'

RSpec.describe "reports/index", :type => :view do
  before(:each) do
    assign(:reports, [
      FactoryGirl.create(:stream_report),
      FactoryGirl.create(:lake_report)
    ])
  end

  it "renders a list of reports" do
    render

    # stream
    assert_select "tr>td", :text => "Brook".to_s
    assert_select "tr>td", :text => "Trout".to_s
    assert_select "tr>td", :text => "S000-001".to_s
    assert_select "tr>td", :text => 9999.to_s
    assert_select "tr>td", :text => "8888".to_s
    assert_select "tr>td", :text => "651-555-1212".to_s
    assert_select "tr>td", :text => "brook.trout@stream.mn".to_s
    assert_select "tr>td", :text => true.to_s

    # lake
    assert_select "tr>td", :text => "Wally".to_s
    assert_select "tr>td", :text => "Walleye".to_s
    assert_select "tr>td", :text => 7777.to_s
    assert_select "tr>td", :text => "Mille Lacs".to_s
    assert_select "tr>td", :text => "48-0002-00".to_s
    assert_select "tr>td", :text => "48-0002-00-209".to_s
    assert_select "tr>td", :text => "Crow Wing".to_s
    assert_select "tr>td", :text => "218.555.1212".to_s
    assert_select "tr>td", :text => "850.555.1212".to_s
    assert_select "tr>td", :text => "wally.walleye@lake.mn".to_s
    assert_select "tr>td", :text => false.to_s
    assert_select "tr>td", :text => 1.5.to_s
  end
end
