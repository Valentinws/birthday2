class UseroptionsController < ApplicationController

    def index
        @useroption = Useroption.find_by(user_id: current_user[:id] )
    end    
    def show
       if Useroption.find_by(user_id: current_user[:id] )==nil
            redirect_to new_useroption_path
        else
            @useroption = Useroption.find_by(user_id: current_user[:id] )
        end

    end    

    def new
       @useroption = Useroption.find_by(user_id: current_user[:id])
        if @useroption==nil
        @useroption = current_user.build_useroption
        # @useroption = Useroption.new( user_id: current_user[:id])
            if @useroption.save
                redirect_to edit_useroption_path(@useroption.id)
            else 
                render html: "Error saving useroption"
            end
        else     
            redirect_to edit_useroption_path(@useroption.id)
        end
    end
    
    def update
        
        @useroption = Useroption.find(params[:id])
        @useroption.update(useroption_params)
        redirect_to edit_useroption_path
    end

    def edit
        @useroption = Useroption.find(params[:id])

        # if @useroption.save 
        #     render html: "Options saved"
        # else
        #     render html: "Options not saved"
        # end


    end

    private

    def useroption_params
        params.require(:useroption).permit(:that_day, :three_days_before, :seven_days_before)
    end


end
