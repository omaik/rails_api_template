module Api
  module V1
    class SessionsController < Devise::SessionsController
      respond_to :json

      protected

      def sign_in_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
