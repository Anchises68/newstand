class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:first_name, :last_name])
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
end
