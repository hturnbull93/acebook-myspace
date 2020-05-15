require 'rails_helper'

RSpec.feature "Posts API", type: :feature do
  scenario "Visiting /api/v1/posts?message=Hello&slug=HelloWorldreturns all posts" do
    @user = User.create(
      first_name: "Sam",
      last_name: "Gangi",
      email: "samgangi@lotr.com",
      password: "theshire"
    )

    page.driver.post("/api/v1/posts?message=Hello&user_id=#{@user.id}") 
    expect(page).to have_content('"message":"Hello"')
  end
end
