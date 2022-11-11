namespace :batch do
  desc "The price depreciates 2% every month"
  task depreciate_price: :environment do
    rows = Car.update_all("price = price - price * 0.02")
    puts "#{rows} affected at #{Time.now}"
  end
end
