require 'spec_helper'

describe "login" do
  it "successfully signs in" do
    @user = FactoryGirl.create(:user)
    visit root_path
    click_link "Log In"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log In"
    page.should have_content "Your Album"
  end
end
describe "create album" do
  it "creates an album" do
    @user = FactoryGirl.create(:user)
    visit root_path
    click_link "Log In"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log In"
    click_link "Add Album"
    fill_in "Name", with: "Ruby album"
    attach_file("Photo", File.expand_path("./app/assets/images/baby_ruby.jpeg"))
    click_button "Create Album"
    page.should have_xpath("//img[@alt='Baby ruby']")
  end
end

describe "add a photo" do
  it "adds a photo to an album" do
    @user = FactoryGirl.create(:user)
    visit root_path
    click_link "Log In"
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log In"
    click_link "Add Album"
    fill_in "Name", with: "Ruby album"
    attach_file("Photo", File.expand_path("./app/assets/images/baby_ruby.jpeg"))
    click_button "Create Album"
    click_link "Add a Photo"
    fill_in "Caption", with: 'Seven Cats of Death!'
    attach_file("Photo", File.expand_path("./app/assets/images/catseye.jpeg"))
    click_button "Add Photo"
    page.should have_xpath("//img[@alt='Catseye']")
  end
end
