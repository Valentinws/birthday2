class BirthdayscController < ApplicationController
  def new
  

  end

  def create
    render plain: params[:birthday].inspect
  end


  def show
  end

  def edit
  end

  def delete
  end
end
