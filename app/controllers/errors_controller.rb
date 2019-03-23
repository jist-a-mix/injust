class ErrorsController < ApplicationController


  def not_found
  	
    render "/400",status: 404,:formats=>[:html]
  end

  def unacceptable
    render "/422",status: 422,:formats=>[:html]
  end

  def internal_server_error
    render "/500",status: 500,:formats=>[:html]
  end


end
