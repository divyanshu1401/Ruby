class ApplicationController < ActionController::Base
    def after_sign_up_path_for(resource)
        byebug
        admin_orders_path
    end
end
