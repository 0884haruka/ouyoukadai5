class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @content = params[:word]
    @range = params[:range]
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:search], params[:word])
    end
    render "/searches/search_result"
  end
end
