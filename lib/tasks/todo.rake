namespace :todo do
  desc "Delete items older then 7 days"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.zone.now - 7.days).destroy_all
  end
end
