class CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all
  end

  def new
  end

end
