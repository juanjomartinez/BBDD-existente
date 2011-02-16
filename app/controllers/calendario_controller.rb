class CalendarioController < ApplicationController

	skip_before_filter :authorize, :index

  def index
		@cant_dias = (Date.new(Time.now.year,12,31).to_date<<(12-Time.now.month)).day
		@dia_inicio = Time.now.beginning_of_month.wday
		@dia_inicio = 7 if @dia_inicio == 0
  end

end
