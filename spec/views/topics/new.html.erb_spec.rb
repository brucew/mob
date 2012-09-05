require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :subject => "MyString",
      :board_id => 1,
      :created_by => 1
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path, :method => "post" do
      assert_select "input#topic_subject", :name => "topic[subject]"
      assert_select "input#topic_board_id", :name => "topic[board_id]"
      assert_select "input#topic_created_by", :name => "topic[created_by]"
    end
  end
end
