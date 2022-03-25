class BirthdayscController < ApplicationController
  def new
    @birthdaylocal = Birthdaym.new

  end
  
  def create
    
    @birthdaylocal = Birthdaym.new(birthdaym_params)
    if @birthdaylocal.save 
      # redirect_to birthdaysc_index_path
      redirect_to birthdaysc_path(@birthdaylocal)
    else
      render 'new' 
    end
    
    
    # binding.pry 
  end

  def index 
    @birthdaylocal = Birthdaym.order(params[:sort])
    # @birthdaylocal.order(params[:sort])
  end

  def show
     @birthdaylocal = Birthdaym.find(params[:id])
  end

  def edit
  end

  def destroy
    @birthdaylocal = Birthdaym.find(params[:id])
    @birthdaylocal.destroy
    redirect_to birthdaysc_index_path
    
  end

  def update
    @birthdaylocal = Birthdaym.find(params[:id])
    # @birthdaylocal = Birthdaym.update(birthdaym_params)
    @birthdaylocal.update(birthdaym_params)
    redirect_to birthdaysc_index_path


  end


  private

    def birthdaym_params
      params.require(:birthdaym).permit(:id, :name, :dayofbirth, :age, :sex )
     
    end

end
