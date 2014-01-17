tarzan
======

A simple example blog based on [Chimpdoc]. Get up and running:

    $ git clone git://github.com/relativesanity/tarzan.git
    $ cd tarzan
    $ bundle install
    $ bundle exec foreman start

Then visit [localhost:5000].

There are configuration options in `app/initializers/chimpdoc.rb`. A bunch of
these should probably live in environment configs. Articles by default live in
`articles/*.{markdown,md}`. [Chimpdoc] allows for connection to Dropbox, but
I've yet to make that configuration simple/documented.

Upside of using the filesystem is that it's supersimple and super fast. Downside
is that an edit requires a redeploy.

[Chimpdoc]: http://github.com/relativesanity/chimpdoc
[localhost:5000]: http://localhost:5000/
