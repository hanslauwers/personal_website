module AuthenticationRedirectConcern
  extend ActiveSupport::Concern

  def authenticate_redirection
    redirect_to root_path unless admin_signed_in?
  end

end