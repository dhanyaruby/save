# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

User.create([:user_name => 'root', :password => 'dat-root'])

states    = State.create([{:name =>"Kerala"}, {:name =>"Tamilnadu"}])

districts = District.create([{:name => "Alappuzha", :state_id => states[0].id}])

villages  = Village.create([{:name => "Champakulam", :district_id => districts[0].id}])

TrainingCenter.create([:name => 'training-center-1', :district =>'district-1', :state =>'Kerala', :pin_code => 560075])

Course.create([:name => "Fabric Painting", :duration_in_days => 45])