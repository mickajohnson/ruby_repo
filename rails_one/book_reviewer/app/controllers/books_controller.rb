class BooksController < ApplicationController
  def index
  end

  def new
    @authors = Author.all
  end

  def create
  end

  def show
  end

  def create_review
  end

  def delete_review

  end

  def create_author
    Author.create(name:params[:name])
    redirect_to '/books/new'
  end
end
