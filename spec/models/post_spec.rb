require 'spec_helper'

describe Midori::Post do
  # let(:post) { FactoryGirl.create }

  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:status) }

  # before(:each) do
  # end

  it "sets a default status of 'DRAFT'" do
    post = build(:post, title: nil, body: nil, slug: nil)
    post.status.should eq("DRAFT")
  end

  it "requires a :title, :body, and :slug when :status == 'PUBLISHED'" do
    post = build(:post, title: nil, body: nil, slug: nil, status: "PUBLISHED")
    post.valid?.should be_false
  end

  it "doesn't require a :title, :body, and :slug when :status == 'DRAFT'" do
    post = build(:post, title: nil, body: nil, slug: nil, status: "DRAFT")
    post.valid?.should be_true
  end
end
