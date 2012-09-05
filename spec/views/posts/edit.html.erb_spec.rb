require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :topic_id => 1,
      :body => "MyText",
      :position => 1,
      :created_by_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_topic_id", :name => "post[topic_id]"
      assert_select "textarea#post_body", :name => "post[body]"
      assert_select "input#post_position", :name => "post[position]"
      assert_select "input#post_created_by_id", :name => "post[created_by_id]"
    end
  end
end
