get "/" do
  @today = Date.today
  @tommorow = Date.today + 1

  @todays_events = Event.where(starts_at: @today..@tommorow).order(:starts_at)

  @event = Event.new

  erb :index
end
