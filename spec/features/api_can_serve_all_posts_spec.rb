# localhost:3000/api/v1/posts

require 'rails_helper'

RSpec.feature "Posts API", type: :feature do
  scenario "Visiting /api/v1/posts returns all posts" do
    @user = User.create(
      first_name: "Sam",
      last_name: "Gangi",
      email: "samgangi@lotr.com",
      password: "theshire"
    )

    Post.create(message:"Hello!", slug:"HelloWorld", user_id: @user.id)
    visit '/api/v1/posts'

    expect(page).to have_content('"message":"Hello!"')
    expect(page).to have_content('"slug":"HelloWorld"')
  end
end
