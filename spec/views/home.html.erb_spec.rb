require "rails_helper"

RSpec.describe "static_pages/home.html.erb" do
  it "displays title Home" do
    render template: "static_pages/home.html.erb", layout: "layouts/application.html.erb"

    # expect(rendered).to have_selector("title", text: "About")
    expect(rendered).to have_title("Home")
  end
end
