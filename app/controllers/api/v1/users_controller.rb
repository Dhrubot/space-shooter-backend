class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 

        render json: users, status: 200
    end

    def show
        user = User.find_by(id: params[:id])

        render json: user, status: 200
    end

    def create
        user = User.find_or_create_by(user_params)

        render json: user, status:200
    end

    # def update
    #     user = User.find_by(id: params[:id])
    #     user.update(user_params)

    #     render json: user, status: 200
    # end

    # def destroy
    #     user = User.find_by(id: params[:id])
    #     user.delete

    #     render json: user
    #     # render json: {userId: user.id}
    # end


    private

    def user_params
        params.require(:user).permit(:nickname)
    end

end
