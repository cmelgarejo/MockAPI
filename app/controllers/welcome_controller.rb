class WelcomeController < ActionController::Base
  # GET /
  def index
    respond_to :html, :json
  end
end
