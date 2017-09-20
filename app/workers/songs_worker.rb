class SongsWorker
  require 'csv'
  include Sidekiq::Worker
 
  def perform(songs_file)
    CSV.foreach(leads_file, headers: true) do |lead|
      Customer.create(title: lead[0], artist_name: lead[1])
    end
  end
end