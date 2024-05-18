-- Part 3: To Paris with MongoDB - Big data database query and manipulation

-- 1. Give the name of the places whose category is “accommodation”.
db.paris.find(
    { category: "accommodation" },
    { name: 1, _id: 0 }
)

-- 2. Give the name and phone number of places with a phone number entered ($exists, $ne); 
db.paris.find(
    { "contact.phone": { $exists: true, $ne: null } },
    { name: 1, "contact.phone": 1, _id: 0 }
)

-- 3. Name and contacts of places with” website” and” Foursquare” provided;
db.paris.find(
    { "contact.website": { $exists: true, $ne: null }, "contact.Foursquare": { $exists: true, $ne: null } },
    { name: 1, contact: 1, _id: 0 }
)

-- 4. Name of places whose name contains the word “hotel” (pay attention to case);
db.paris.find(
    { name: { $regex: "hotel", $options: "i" } },
    { name: 1, _id: 0 }
)

-- 5. Name and services of places offering 5 services;
db.paris.find(
    { services: { $size: 5 } },
    { name: 1, services: 1, _id: 0 }
)

-- 6. Categories of places with at least a rating (reviews.rating) of 4 or more;
db.paris.find(
    { "reviews": { $elemMatch: { "rating": { $gte: 4 } } } },
    { category: 1, _id: 0 }
)

-- 7. GPS coordinates of places whose address contains “rue de rome”;
db.paris.find(
    { "location.address": { $regex: "rue de rome", $options: "i" } },
    { "location.coord": 1, _id: 0 }
)

-- 8. For each ”poi” category place name, give the number of reviews whose source (reviews.source) is 
“Facebook”. Sort in descending order;
db.paris.aggregate([
    { $match: { category: "poi" } },
    { $unwind: "$reviews" },
    { $match: { "reviews.source": "Facebook" } },
    { $group: {
        _id: "$name",
        facebookReviewCount: { $sum: 1 }
    }},
    { $sort: { facebookReviewCount: -1 } }
])

-- 9. For each place name in the “restaurant” category, give the average rating and the number of 
comments.
db.paris.aggregate([
    { $match: { category: "restaurant" } },
    { $unwind: "$reviews" },
    { $group: {
        _id: "$name",
        averageRating: { $avg: "$reviews.rating" },
        numberOfComments: { $sum: 1 }
    }},
    { $sort: { numberOfComments: -1 } }
])

-- $Lookup command example

db.paris.aggregate([
    {
        $lookup: {
            from: "comments",  
            localField: "_id", 
            foreignField: "placeId", 
            as: "placeComments" 
        }
    },
    {
        $project: {
            name: 1, 
            placeComments: 1 
        }
    }
])

