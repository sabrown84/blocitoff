module ItemsHelper
  include ActionView::Helpers::DateHelper

  def days_left(item)
    distance_of_time_in_words(item.created_at, Time.zone.today - 7.days)
  end
end
