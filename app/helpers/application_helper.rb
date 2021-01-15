module ApplicationHelper
    # specifically for view
    # if you're using if/else/end put here instead of views

    def logged_in?
        !!current_user
    end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
    
end
