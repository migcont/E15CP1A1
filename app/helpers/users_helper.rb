module UsersHelper
    
    def logged?
        session[:user_id].present?
    end
    
    def currenet_user
        User.find(session[:user_id])
    end

end
