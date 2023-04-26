import tweepy


print('hey')
print('hery')

CONSUMER_KEY="vmDeXGGCilDhH5X0Felvmbm03"
CONSUMER_SECRET="fTUMAkDVQnBPGqR39YcyfTxYHHSQVvQd3vyX12NodQCBIXJOda"
ACCESS_KEY="1449259563862081537-5PTAqaKWvZVooJXdi8XCsyeu9TCshh"
ACCESS_SECRET="HHE82Bpi7qmaOnGfUX71kCNiuDDrHvqjZ1D4AcSmEp1Ip"

auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_KEY, ACCESS_SECRET)
api = tweepy.API(auth)


mentions = api.mentions_timeline()
for mention in mentions:
    print(str(mention.id) + " - " + mention.text)
    if str() in mention.text.lower():
        print('''hey this is simple a twitter bot w/o any skills...
             stay positive 
            have a great day            ''')


                                                                