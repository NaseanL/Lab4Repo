class PasswordResetsController < ApplicationController

    def new

    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            # Send email
            PasswordMailer.with(user: @user).reset.deliver_now
        end

        redirect_to root_path, notice: "if an account with that email was found, we have sent a link to reset your password"
    end
end