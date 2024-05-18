-- Part 2: Twitter with MongoDB – Database implementation and query

-- 1. Change the number of followers of user Isy to 5.
db.users.updateOne(
    { "_id": 1 },
    { "$set": { "nbFollowers": 5 } }
)

-- 2. Add the tweet text: "yay a new tweet!" to the user with _id: 2.
db.users.updateOne(
    { "_id": 2 },
    { "$push": { "tweets": { "text": "yay a new tweet!", "createdAt": new Date().toISOString() } } }
)

-- 3. Give the query to obtain the second tweet from user "Rosy”
db.users.find(
    { "screenName": "Rosy" },
    { "tweets": { "$slice": [1, 1] } }
)

-- 4. Give the query allowing you to obtain the tweets containing an url.
db.users.find(
    { "tweets.text": { "$regex": "http[s]?://" } },
    { "screenName": 1, "tweets": { "$elemMatch": { "text": { "$regex": "http[s]?://" } } } }
)

-- 5. Give the query to obtain the greatest number of followers.
db.users.find().sort({ "nbFollowers": -1 }).limit(1)

-- 6. Give the query to get the users who are followed by users 2 or 4
db.users.find(
    { "followers": { "$in": [2, 4] } }
)

-- 7. Give the query to obtain the users whose first tweet dates from April 2016.
db.users.find(
    { "tweets.0.createdAt": { "$regex": "^2016-04" } }
)

-- 8. Give the query to get the users who used the hashtag “Happy”.
db.users.find(
    { "tweets.hashtags": "Happy" }
)

-- 9. Give the query to get the number of tweets per user.
db.users.aggregate([
    { "$project": {
        "screenName": 1,
        "numberOfTweets": {
            "$size": {
                "$ifNull": ["$tweets", []]  
            }
        }
    }}
])

-- 10. Give the query to get the number of hashtags for each tweet.
db.users.aggregate([
    { "$unwind": "$tweets" },  
    { "$project": {
        "screenName": 1,
        "tweetText": "$tweets.text",
        "numberOfHashtags": {
            "$size": {
                "$ifNull": ["$tweets.hashtags", []]  
            }
        }
    }}
])
