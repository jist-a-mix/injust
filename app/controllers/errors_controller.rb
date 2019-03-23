class ErrorsController < ApplicationController


  def not_found
  	
    render status: 404
  end

  def unacceptable
    render status: 422
  end

  def internal_server_error
    render "/500",status: 500
  end


end
