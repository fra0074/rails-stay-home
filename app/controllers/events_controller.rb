class EventsController < ApplicationController
  def index
    @current_events = []
    @past_events = []
    Event.all.each do |event|
      if event[:date] >= Date.today
        @current_events << event
      else
        @past_events << event
      end
    end
  end
end
