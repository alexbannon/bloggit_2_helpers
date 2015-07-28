# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all

User.create(username: "alexbannon", email: "alexbannon@gmail.com", age: 26)
User.create(username: "moose", email: "moose@gmail.com", age: 24)
User.create(username: "barackobama", email: "president@whitehouse.gov", age: 54)

Post.create(title: "First Post", post_content: "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.", user_id: User.first.id)
Post.create(title: "Second Post", post_content: "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.", user_id: User.first.id)
Post.create(title: "Third Post", post_content: "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.", user_id: User.all[1].id)
Post.create(title: "Fourth Post", post_content: "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.", user_id: User.last.id)
Post.create(title: "Fifth Post", post_content: "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog.", user_id: User.last.id)

Comment.create(comment_content: "This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post.", user_id: User.first.id, post_id: Post.all[0].id)
Comment.create(comment_content: "This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post.", user_id: User.all[1].id, post_id: Post.all[1].id)
Comment.create(comment_content: "This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post.", user_id: User.all[2].id, post_id: Post.all[2].id)
Comment.create(comment_content: "This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post.", user_id: User.all[0].id, post_id: Post.all[3].id)
Comment.create(comment_content: "This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post. This is a great post.", user_id: User.all[1].id, post_id: Post.all[4].id)
