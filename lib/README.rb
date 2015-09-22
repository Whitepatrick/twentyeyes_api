require_relative 'crud_reqs'


# CREATOR!! create post/iamge methods require (title/image, post/caption)
c = Creator.new
# sample create
#c.insert_post("GREAT NEWS EVERYONE!", "THE CREATE CLASS IS WORKING AGAIN!")

# READER!! get post/image methods require record id
r = Reader.new
# sample read
#r.get_posts('100008').each_row do |row|
#  p row[2]
#end

# UPDATER!! update post/image methods require post/image id and new vals
u = Updater.new
# sample update
#u.update_post("EVEN GREATER NEWS EVERYONE!!", "THIS POST WAS JUST UPDATED WITH NON-SENSE!!", '100008')

# DELETER!! delete post/image requires post/image id
d = Deleter.new
# sample delete
#d.delete_post('100009')
