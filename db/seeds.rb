# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 # @response['events'].each do |event|
 #   Event.new(
 #   name: event['name']['text'],
 #   description: event['description']['text'],
 #   start: event['start']['timezone'],
 #   start: Time.iso8601(event['start']['local']).to_s
 #   end: Time.iso8601(event['end']['local']).to_s,
 #   logo: image_tag event['logo']['url']
 #   )
 puts "Starting"
 @url = "https://www.eventbriteapi.com/v3/events/search/?q=united+states&token=SM4RJIL6AMM75DCOVOFM"
 puts "Calling API"
 @response = HTTParty.get @url
 puts "done"
  @response['events'].each do |event|
    image = event['logo'].nil? ? '' : event['logo']['url']
    Event.create(
      name: event['name']['text'],
      description: event['description']['text'],
      tz: event['start']['timezone'],
      start: DateTime.iso8601(event['start']['local']).to_s,
      end: DateTime.iso8601(event['end']['local']).to_s,
      logo: image
      )
  end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=ny&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
   image = event['logo'].nil? ? '' : event['logo']['url']
   Event.create(
     name: event['name']['text'],
     description: event['description']['text'],
     tz: event['start']['timezone'],
     start: DateTime.iso8601(event['start']['local']).to_s,
     end: DateTime.iso8601(event['end']['local']).to_s,
     logo: image
     )
 end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=california&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
  image = event['logo'].nil? ? '' : event['logo']['url']
  Event.create(
    name: event['name']['text'],
    description: event['description']['text'],
    tz: event['start']['timezone'],
    start: DateTime.iso8601(event['start']['local']).to_s,
    end: DateTime.iso8601(event['end']['local']).to_s,
    logo: image
    )
end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=florida&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
   image = event['logo'].nil? ? '' : event['logo']['url']
   Event.create(
     name: event['name']['text'],
     description: event['description']['text'],
     tz: event['start']['timezone'],
     start: DateTime.iso8601(event['start']['local']).to_s,
     end: DateTime.iso8601(event['end']['local']).to_s,
     logo: image
     )
 end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=ft+lauderdale&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
  image = event['logo'].nil? ? '' : event['logo']['url']
  Event.create(
    name: event['name']['text'],
    description: event['description']['text'],
    tz: event['start']['timezone'],
    start: DateTime.iso8601(event['start']['local']).to_s,
    end: DateTime.iso8601(event['end']['local']).to_s,
    logo: image
    )
end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=miami&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
   @response['events'].each do |event|
   image = event['logo'].nil? ? '' : event['logo']['url']
   Event.create(
     name: event['name']['text'],
     description: event['description']['text'],
     tz: event['start']['timezone'],
     start: DateTime.iso8601(event['start']['local']).to_s,
     end: DateTime.iso8601(event['end']['local']).to_s,
     logo: image
     )
 end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=wyncode&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
  image = event['logo'].nil? ? '' : event['logo']['url']
  Event.create(
    name: event['name']['text'],
    description: event['description']['text'],
    tz: event['start']['timezone'],
    start: DateTime.iso8601(event['start']['local']).to_s,
    end: DateTime.iso8601(event['end']['local']).to_s,
    logo: image
    )
end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=gowithme&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
  image = event['logo'].nil? ? '' : event['logo']['url']
  Event.create(
    name: event['name']['text'],
    description: event['description']['text'],
    tz: event['start']['timezone'],
    start: DateTime.iso8601(event['start']['local']).to_s,
    end: DateTime.iso8601(event['end']['local']).to_s,
    logo: image
    )
end

@url = "https://www.eventbriteapi.com/v3/events/search/?q=Super+Secret+Teacup+Convention&token=SM4RJIL6AMM75DCOVOFM"
puts "Calling API"
@response = HTTParty.get @url
puts "done"
  @response['events'].each do |event|
  image = event['logo'].nil? ? '' : event['logo']['url']
  Event.create(
    name: event['name']['text'],
    description: event['description']['text'],
    tz: event['start']['timezone'],
    start: DateTime.iso8601(event['start']['local']).to_s,
    end: DateTime.iso8601(event['end']['local']).to_s,
    logo: image
    )
end


#  @url = "https://www.eventbriteapi.com/v3/events/search?token=SM4RJIL6AMM75DCOVOFM"
#  puts "Calling API"
#  @response = HTTParty.get @url
#  puts "done"
#   @response['events'].each do |event|
#     Event.create(
#       name: event['name']['text'],
#       description: event['description']['text'],
#       tz: event['start']['timezone'],
#       start: DateTime.iso8601(event['start']['local']).to_s,
#       end: DateTime.iso8601(event['end']['local']).to_s,
#       logo: event['logo']['url']
#       )
#   end
