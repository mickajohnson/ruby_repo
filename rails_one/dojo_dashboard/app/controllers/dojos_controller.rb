class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    @dojo = Dojo.create( dojo_params )
    unless @dojo.valid?
      flash[:errors] = @dojo.errors.full_messages
      redirect_to '/dojos/new'
    else
      redirect_to '/dojos', notice: "You have successfully added a branch"
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update( dojo_params )
    unless @dojo.valid?
      flash[:errors] = @dojo.errors.full_messages
      redirect_to '/dojos/' + @dojo.id.to_s + '/edit'
    else
      redirect_to '/dojos', notice: "You have successfully added a branch"
    end
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos', notice: "You have successfully deleted a branch"
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
