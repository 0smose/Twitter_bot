require 'dotenv'# Appelle la gem Dotenv
require 'twitter'
require 'rspec'
require 'pry'

Dotenv.load('../.env') # Ceci appelle le fichier .env (situé dans le même dossier que le programme Ruby) grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

# Il est ensuite très facile d'appeler les données du fichier .env, par exemple là je vais afficher le contenu de la clé TWITTER_API_SECRET
def login_twitter

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]

	end
  return client
end
# ligne qui permet de tweeter sur ton compte


