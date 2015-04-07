# Creating an OpenTok Object
API_KEY = ENV['opentok_api_key']     # replace with your OpenTok API key
API_SECRET = ENV['opentok_secret_key']  # replace with your OpenTok API secret
opentok = OpenTok::OpenTokSDK.new API_KEY, API_SECRET