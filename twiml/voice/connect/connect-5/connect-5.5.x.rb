require 'twilio-ruby'

response = Twilio::TwiML::VoiceResponse.new
response.connect(action: 'https://myactionurl.com/', timeout: '5') do |connect|
    connect.room('meeting', statusCallback: 'https://myactionurl.com/', mediaRegion: 'ie1')
end

puts response
