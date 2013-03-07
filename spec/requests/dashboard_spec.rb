require "spec_helper"

describe "Dashboard" do

  before(:each) { @routes = Midori::Engine.routes }

  it "exists" do
    get "/admin"
    expect(response.status).to eq(200)
  end

end
