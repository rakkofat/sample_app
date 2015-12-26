require "rails_helper"

RSpec.describe "static_pages/about.html.erb" do
  it "displays title About" do
    render template: "static_pages/about.html.erb", layout: "layouts/application.html.erb"

    # expect(rendered).to have_selector("title", text: "About")
    expect(rendered).to have_title("About")
  end
end
