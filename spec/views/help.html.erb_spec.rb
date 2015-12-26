require "rails_helper"

RSpec.describe "static_pages/help.html.erb" do
  it "displays title Help" do
    render template: "static_pages/help.html.erb", layout: "layouts/application.html.erb"

    # expect(rendered).to have_selector("title", text: "About")
    expect(rendered).to have_title("Help")
  end
end
