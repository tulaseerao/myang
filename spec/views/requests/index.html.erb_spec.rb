require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :request_type => "Request Type",
        :requester => "Requester",
        :organization => "Organization",
        :site => "Site",
        :unit => "Unit",
        :notes => "MyText"
      ),
      stub_model(Request,
        :request_type => "Request Type",
        :requester => "Requester",
        :organization => "Organization",
        :site => "Site",
        :unit => "Unit",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Request Type".to_s, :count => 2
    assert_select "tr>td", :text => "Requester".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Site".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
