module ApplicationHelper
  
  def format_date(date_time)
      date_time.strftime("Printed on %m/%d/%Y")
  end
end
