require "spec_helper"

describe "Dashboard" do

  it "exists" do
    get "/admin"
    expect(response.status).to eq(200)
  end

end
