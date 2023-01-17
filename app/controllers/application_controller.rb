class ApplicationController < ActionController::Base

  private
  
  def check_manager
    unless current_user.manager?
      redirect_back fallback_location: root_path,
                    notice: "You are not allowed to this route."
    end
  end

end
