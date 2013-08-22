class Event < ActiveRecord::Base
  attr_accessible :name, :event_start_time
  
  def start_time
    event_start_time
  end
end
