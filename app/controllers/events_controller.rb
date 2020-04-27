class EventsController < ApplicationController
  def index
    @current_events = []
    @past_events = []
    Event.order("date DESC").each do |event|
      if event[:date] >= Date.today
        @current_events << event
      else
        @past_events << event
      end
    end
  end
end
