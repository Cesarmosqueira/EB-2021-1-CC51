import matplotlib.pyplot as plt

data = {
 "video_id": 0,
 "trending_date": 0,
 "title": 0,
 "channel_title": 0,
 "category_id": 3592,
 "publish_time": 0,
 "tags": 0,
 "views": 3592,
 "likes": 3592,
 "dislikes": 3592,
 "comment_count": 3592,
 "thumbnail_link": 0,
 "comments_disabled": 0,
 "ratings_disabled": 0,
 "video_error_or_removed": 0,
 "description": 0,
 "state": 0,
 "lat": 0,
 "lon": 0,
 "geometry": 0
}

plt.bar(range(len(data)), list(data.values()), align='center')
plt.xticks(range(len(data)), list(data.keys()), rotation=90)
plt.show()
