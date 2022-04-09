# README

These are the commands you need to run to make this work in development environment:

* Start rails server on port 3003
rails s -p 3003

* Turn on redis server(queue)
redis-server

* You can interact with redis in command line if you want
redis-cli

* Turn on sidekiq worker node with 1 thread
sidekiq -c 1
