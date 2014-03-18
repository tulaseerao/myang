require 'spec_helper'

describe "requests/new" do
  before(:each) do
    assign(:request, stub_model(Request,
      :request_type => "MyString",
      :requester => "MyString",
      :organization => "MyString",
      :site => "MyString",
      :unit => "MyString",
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requests_path, "post" do
      assert_select "input#request_request_type[name=?]", "request[request_type]"
      assert_select "input#request_requester[name=?]", "request[requester]"
      assert_select "input#request_organization[name=?]", "request[organization]"
      assert_select "input#request_site[name=?]", "request[site]"
      assert_select "input#request_unit[name=?]", "request[unit]"
      assert_select "textarea#request_notes[name=?]", "request[notes]"
    end
  end
end
