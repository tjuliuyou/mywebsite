# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Archive.delete_all
archive = Archive.create({start_time: '2016-05-1 0:0:0',end_time: '2016-05-31 23:59:59'})

bg1 = archive.blogs.create(title: 'hello world', content: 'this is my first blog!!', published: true)

bg1.comments.create(commenter:"GOod",body: 'this is good')
bg1.comments.create(commenter:"GOod2",body: 'this is good2')

tag1 = Tag.create(name: 'linux')
tag2 = Tag.create(name: 'windows')

BlogTagShip.create(blog: bg1, tag: tag1)

archive.blogs.create(title: 'hello world2', content: 'this is my second blog!!', published: true)
