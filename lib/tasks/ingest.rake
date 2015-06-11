namespace :creditcards do
  desc "Ingest a json file"
  task :ingest => [:environment] do
    feed = ENV['FEED']
    puts "Ingesting: #{feed}"
    count = CreditCard.ingest(feed)
    puts "Ingested: #{count}"
  end
end
