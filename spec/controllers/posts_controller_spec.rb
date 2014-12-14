require 'rails_helper'

describe PostsController do
  let(:test_user) {FactoryGirl.create :user}
  let(:test_post) {FactoryGirl.create :post}
  before :each do
    session[:user_id] = test_user.id
  end

  describe "#index" do
    it "adds a post to a list of all posts" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "should allow users to make new posts" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end
  end

  describe "#create" do
    it "should create a new post if given valid params" do
      expect {
        post :create,
        :post => { title: 'my title', content: 'my content' }
      }.to change { Post.count }.by(1)
    end
  end

end
