require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :subject => "MyString",
      :board_id => 1,
      :created_by => 1
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path(@topic), :method => "post" do
      assert_select "input#topic_subject", :name => "topic[subject]"
      assert_select "input#topic_board_id", :name => "topic[board_id]"
      assert_select "input#topic_created_by", :name => "topic[created_by]"
    end
  end
end
