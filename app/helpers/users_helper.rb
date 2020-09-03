module UsersHelper
  def display_events(events, partial_to_render, title_to_display)
    if events.size.positive?
      puts title_to_display
      render partial: partial_to_render, locals: {events: events, title: title_to_display}
    end
  end
end
