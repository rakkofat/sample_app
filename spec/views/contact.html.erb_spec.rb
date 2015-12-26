require "rails_helper"

RSpec.describe "static_pages/contact.html.erb" do
  it "displays title Contact" do
    render template: "static_pages/contact.html.erb", layout: "layouts/application.html.erb"

    # expect(rendered).to have_selector("title", text: "About")
    expect(rendered).to have_title("Contact")
  end
end
