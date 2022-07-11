class AttendeeEventController < ApplicationController
  
  def create
    AttendeeEvents.
    flash[:notice] = "Successfully joined the event."
    
    redirect_to(:back)
  end
end
