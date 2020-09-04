class InvitationsController < ApplicationController
  before_action :set_invitation, only: %i[show edit update destroy]

  # GET /invitation/new
  def new
    @invitation = Invitation.new
  end

  # POST /invitation
  def create
    puts "Submitted params are: #{invitation_params}"
    @invitation = Invitation.new(invitation_params)
    respond_to do |format|
      if @invitation.save
        format.html { redirect_to root_path, notice: 'Invitation has been successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # Only allow a list of trusted parameters through.
  def invitation_params
    params.require(:invitation).permit(:event_attendee_id, :attended_event_id)
  end
end
