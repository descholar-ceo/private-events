module EventsHelper
  def display_events(events, partial_to_render, title_to_display)
    render partial: partial_to_render, locals: { events: events, title: title_to_display } if events.size.positive?
  end

  def display_avent_attendees(event, partial_to_render)
    render partial: partial_to_render, locals: { event: event } if event.event_attendee.size.positive?
  end
end
