class Admin::CustomersController < Admin::ApplicationController
    def update
        params[:customer].delete(:password) if params[:customer][:password].blank?
        super
    end

    def customer_params
        params.require(:customer).permit(:profile_pic)
    end
end
