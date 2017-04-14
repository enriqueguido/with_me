module EventsHelper
  # 
  # def api_call(search)
  #   if search.empty?
  #   url = "https://www.eventbriteapi.com/v3/events/search?token=SM4RJIL6AMM75DCOVOFM"
  # else
  #     url = "https://www.eventbriteapi.com/v3/events/search?q=#{search}&token=SM4RJIL6AMM75DCOVOFM"
  #   end
  #   response = HTTParty.get url
  #
  #    response['events'].each do |event|
  #       image = event['logo'].nil? ? '' : event['logo']['url']
  #      Event.create(
  #        name: event['name']['text'],
  #        description: event['description']['text'],
  #        tz: event['start']['timezone'],
  #        start: DateTime.iso8601(event['start']['local']).to_s,
  #        end: DateTime.iso8601(event['end']['local']).to_s,
  #        logo: image
  #        )
  #    end
  # end
end
