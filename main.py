import configparser
import pandas as pd
import tweepy

# read configs
config = configparser.ConfigParser()
config.read('config.ini')

api_key = config['twitter']['api_key']
api_key_secret = config['twitter']['api_key_secret']

access_token = config['twitter']['access_token']
access_token_secret = config['twitter']['access_token_secret']

print(api_key)

# authentication
auth = tweepy.OAuthHandler(api_key, api_key_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

### tweets from specific twitter user
#user = 'divyamyneni333'
#limit = 100
#tweets = tweepy.Cursor(api.user_timeline, screen_name=user, count=100, tweet_mode='extended').items(limit)

### tweets using hashtags
keyword = '#NEU'
limit = 100
tweets = tweepy.Cursor(api.search_tweets, q=keyword, count=100, tweet_mode='extended').items(limit)

# create DataFrame
columns = ['User', 'Tweet', 'Id', 'TweetDate']
data = []

for tweet in tweets:
    data.append([tweet.user.screen_name, tweet.full_text, tweet.id_str, tweet.created_at])

df = pd.DataFrame(data, columns=columns)
df.to_csv('UserTweets.csv')