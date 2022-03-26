class BirthdayscController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :correct_user, only: [:edit, :update, :destroy, :show]

  def new
    # @birthdaylocal = Birthdaym.new
    @birthdaylocal = current_user.birthdayms.build

  end
  
  def create
    
    # @birthdaylocal = Birthdaym.new(birthdaym_params)
    @birthdaylocal = current_user.birthdayms.build(birthdaym_params)
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

  def correct_user
    @birthdaylocal = current_user.birthdayms.find_by(id: params[:id])
    redirect_to birthdaysc_index_path, notice: "You are not authenticate on the good user to have acces to that!" if @birthdaylocal.nil?
  end
  


  private

    def birthdaym_params
      params.require(:birthdaym).permit( :name, :dayofbirth, :age, :sex, :user_id )
     
    end

end