class PostsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.all
  end
  def create
   Post.create(memo: params [:memo])
   
   def create
    Tweet.create(tweet_params)
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
     tweet.destroy
    end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
  end
end