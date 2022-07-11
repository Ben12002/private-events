class AttendeeEventsController < ApplicationController
  
  def create
    attendee_event = AttendeeEvent.new(attendee_id: params[:attendee_id], 
                                        event_attended_id: params[:event_attended_id])
    # if attendee_event.save
    #   flash[:notice] = "Successfully joined the event."
    #   redirect_back fallback_location: root_path
    # else
    #   flash[:alert] = "Failed to join the event."
    #   flash[:error] = attendee_event.errors
    #   redirect_back fallback_location: root_path
    # end

    begin
      attendee_event.save
      flash[:notice] = "Successfully joined the event."
      redirect_back fallback_location: root_path
    rescue ActiveRecord::RecordNotUnique => e
      flash[:alert] = "You have already joined that event."
      redirect_back fallback_location: root_path
    end
  end

  private

  # def attendee_event_params
  #   params.require(:)
  # end
end
