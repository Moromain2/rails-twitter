require 'twitter'
class SendTweet
  def initialize(tweet)
    #fait passer le string en paramètre
    @tweet = tweet
  end
  def log_in_twitter
    #log in avec credentials
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "eIWRgUIPCJVnNIDI05ZIX3963"
      config.consumer_secret     = "cHa0UVLoeZV9boot3NVGSvmHRt1mWz02V7ADJBnZ0bYrd4bldS"
      config.access_token        = "918050050529521665-Bp6rxOPbgm3fQj6mxZTbGUtUx6R9ksF"
      config.access_token_secret = "uMgveGD9dU3RSATAFsd0aqOVNa5nnVExh3cENoVJPk0W9"
    end
  end
  def perform
    #envoies le tweet
    log_in_twitter
    @client.update(@tweet)
  end
end
