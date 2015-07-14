class ApplicationController < ActionController::API

  protected_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?
  force_ssl if: :ssl_configured?

  protected

  def ssl_configured?
    !Rails.env.development?
  end

  def json_request?
    request.format = json
  end

end
