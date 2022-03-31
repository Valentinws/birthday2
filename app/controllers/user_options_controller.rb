class UserOptionsController < ApplicationController
    before_action :authenticate_user!
    before_action :grab_option,  only: [:edit,  :show, :destroy, :update]

    def new
        @options = current_user.user_options.build(key: @option_name.to_json, value: 'true')
        
    end
    
    def create
        @options = current_user.user_options.build(key: params, value: 'true')
        render html: @options.to_json
        
    end

    def show
    end

     def index
        @available_options = [:seven_days_reminder, :three_days_reminder]
        @options = current_user.user_options.where(key: @available_options).group_by{|e| e.key}
    end
    
     def edit
    end

     def update 

    end

     def destroy
    end
    

    private 

     def grab_option
        @option = current_user.user_options.find_by(id: params[:id])

        raise ActionController::RoutingError.new('Not Found') if @option.nil?
    end
end
