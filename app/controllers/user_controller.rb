class UserController < ApplicationController
     def index
       @user = User.all
     end
     def show
       @user = User.find(params[:id])
     end

     def new
     end
     
     def create
       @user = User.new(user_params)
 
       @user.save
       redirect_to @user
     end
    private
       def user_params
         params.require(:user).permit(:user, :name)
       end
end
