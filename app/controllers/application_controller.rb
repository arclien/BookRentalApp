class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

=begin
  # error handling
  rescue_from Exception, with: :internal_server_error
  rescue_from ActionController::RoutingError,
              ActionController::UnknownController,
              ::AbstractController::ActionNotFound,
              ActiveRecord::RecordNotFound, with: :not_found
  
  def not_found
    
    respond_to do |format|
      format.html { render status: :not_found, template: 'errors/not_found' }
    end
  rescue ActionController::UnknownFormat
    render status: :not_found, text: 'not found'
  end

  def internal_server_error(exception)
    logger.error exception.message
    logger.error exception.backtrace.join("\n")


    respond_to do |format|
      format.html { render status: :internal_server_error, template: 'errors/internal_server_error' }
    end
  rescue ActionController::UnknownFormat
    render status: :internal_server_error, text: 'internal server error'
  end
=end

end
