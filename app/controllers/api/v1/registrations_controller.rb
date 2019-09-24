module Api
  module V1
    class RegistrationsController < Devise::RegistrationsController
      respond_to :json

      protected

      def sign_up_params
        params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
      end
    end
  end
end
