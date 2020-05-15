require 'rails_helper'

RSpec.describe Api::V1::PostsController, type: :controller do

  before(:each) do
    @user = User.create(
    first_name: "Sam",
    last_name: "Gangi",
    email: "samgangi@lotr.com",
    password: "theshire"
    )
  end

  it 'POST /posts with a user id responds with json' do
    post :create, params: {
      user_id: @user.id,
      message: 'Mr Frodo'
    }

    json = JSON.parse(response.body)

    expect(json['status']).to eq "created"
    expect(json['post']['message']).to eq "Mr Frodo"
    expect(json['post']['user_id']).to eq @user.id
  end

  it 'POST /posts without a user id responds with json with 500' do
    post :create, params: {
      user_id: "a",
      message: 'Mr Frodo'
    }

    json = JSON.parse(response.body)

    expect(json['status']).to eq 500
  end

  it 'GET /posts returns all posts' do
    Post.create(message: 'Mr Frodo', user_id: @user.id, first_name: @user.first_name, last_name: @user.last_name)
    Post.create(message: "I'm coming with you", user_id: @user.id, first_name: @user.first_name, last_name: @user.last_name)
    
    get :index

    json = JSON.parse(response.body)

    expect(json['status']).to eq 200
    expect(json['posts'].length).to eq 2
    expect(json['posts'].first['message']).to eq 'Mr Frodo'
    expect(json['posts'].last['message']).to eq "I'm coming with you"
    expect(json['posts'].first['user_id']).to eq @user.id
    expect(json['posts'].last['user_id']).to eq @user.id
    expect(json['posts'].first['first_name']).to eq @user.first_name
    expect(json['posts'].first['last_name']).to eq @user.last_name
    expect(json['posts'].last['first_name']).to eq @user.first_name
    expect(json['posts'].last['last_name']).to eq @user.last_name
  end
end
