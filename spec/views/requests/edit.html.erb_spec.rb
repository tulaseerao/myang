require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :request_type => "MyString",
      :requester => "MyString",
      :organization => "MyString",
      :site => "MyString",
      :unit => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", request_path(@request), "post" do
      assert_select "input#request_request_type[name=?]", "request[request_type]"
      assert_select "input#request_requester[name=?]", "request[requester]"
      assert_select "input#request_organization[name=?]", "request[organization]"
      assert_select "input#request_site[name=?]", "request[site]"
      assert_select "input#request_unit[name=?]", "request[unit]"
      assert_select "textarea#request_notes[name=?]", "request[notes]"
    end
  end
end
