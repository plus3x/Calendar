class HomeController < ApplicationController
  skip_before_action :authorize
  
  def index
    @events = Event.all
  end
end
