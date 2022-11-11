set :output, "./log/cron.log"
env :PATH, ENV['PATH']
set :environment, "development"

every 1.month do
	rake 'batch:depreciate_price'
end
