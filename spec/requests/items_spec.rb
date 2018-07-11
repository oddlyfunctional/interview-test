require "rails_helper"

RSpec.describe ItemsController, type: :request do
  def body
    JSON.parse(response.body)
  end

  it "ticks an empty list" do
    post "/items/tick",
      params: { items: [] }.to_json,
      headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
    expect(body).to eq []
  end
end
