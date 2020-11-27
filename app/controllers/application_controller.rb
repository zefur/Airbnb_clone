class ApplicationController < ActionController::Base

    # before_action :authenticate_user!

    include Pundit

  def after_sign_in_path_for(resource)
   skills_path
  end

  def after_sign_up_path_for(resource)
   skills_path
  end

    # after_action :verify_authorized, except: :index, unless: :skip_pundit?
    # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

    private

    def skip_pundit?
      devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
    end

end
