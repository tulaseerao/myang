require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :request_type => "Request Type",
      :requester => "Requester",
      :organization => "Organization",
      :site => "Site",
      :unit => "Unit",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Request Type/)
    rendered.should match(/Requester/)
    rendered.should match(/Organization/)
    rendered.should match(/Site/)
    rendered.should match(/Unit/)
    rendered.should match(/MyText/)
  end
end
