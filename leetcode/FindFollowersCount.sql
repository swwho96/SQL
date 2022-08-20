SELECT user_id, COUNT(follower_id) 'followers_count'
from followers GROUP BY user_id order by 1;