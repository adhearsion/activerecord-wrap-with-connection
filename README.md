activerecord-wrap-with-connection
===========

ActiveRecord is intended for short-lived threads. In order to use it in other situations, connections must be carefully checked back in to the pool in order for it not to be saturated. This gem monkey-patches ActiveRecord to wrap all model methods which touch a connection in [#with_connection](http://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/ConnectionPool.html#method-i-with_connection)

Requirements
------------

* Rails 3.0.0+

Install
-------

* `gem install activerecord-wrap-with-connection`
* `require 'activerecord-wrap-with-connection'` after requiring ActiveRecord

Author
------

Original author: Ben Langfeld

Contributors:

* [Steve](http://coderrr.wordpress.com/) - The original version of this patch, for Rails 2.3

Links
-----
* [Source](https://github.com/adhearsion/activerecord-wrap-with-connection)
* [Documentation](http://rdoc.info/github/adhearsion/activerecord-wrap-with-connection/master/frames)
* [Bug Tracker](https://github.com/adhearsion/activerecord-wrap-with-connection/issues)

Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  * If you want to have your own version, that is fine but bump version in a commit by itself so I can ignore when I pull
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2011 Ben Langfeld. MIT licence (see LICENSE for details)
