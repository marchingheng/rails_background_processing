# README
The idea of background processing is: there will 2 servers web server and worker server. Web server get the request and send the request to the queue, and it immediately reply to the user that the job is being process. On the other end of the queue, the worker server will process the requests asynchronously.

These are the commands you need to run to make this work in development environment:

* Start rails server on port 3003\
rails s -p 3003

* Turn on redis server(queue)\
redis-server

* You can interact with redis in command line if you want\
redis-cli

* Turn on just one sidekiq worker server\
sidekiq -c 1


url to the report generation button\
http://localhost:3003/sales/

url to the sidekiq worker dashboard\
http://localhost:3003/sidekiq/
