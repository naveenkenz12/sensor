namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Dustbin].each(&:delete_all)
    
    Dustbin.populate 500 do |dustbin|
      dustbin.location = Faker::Address.street_address
      dustbin.temperature = [10, 20, 30, 40, 50, 60]
      dustbin.health = ["execellent", "good", "critical"]
      dustbin.filled_level = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]
      dustbin.created_at = 2.years.ago..Time.now
      dustbin.updated_at = 2.years.ago..Time.now
    end
    
  end
end