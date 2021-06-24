class UsersController < ApplicationController

    def index
        @users = User.all
    
        render json: @users
    end
    
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
        @user = User.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def user_params
        params.require(:user).permit(:username,:password)
        end
end
