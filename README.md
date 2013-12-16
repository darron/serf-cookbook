Serf Cookbook
=================

Requirements
------------

### Platform:

Ubuntu 10.0.4LTS, 12.0.4LTS

### Cookbooks:

None

Attributes
----------

*List attributes here*

Recipes
-------

### serf::default

Installs enables and starts Serf using configuration files from [octohost](https://github.com/octohost/octohost)

Testing
-------

![Build Status](https://travis-ci.org/darron/serf-cookbook.png?branch=master)](https://travis-ci.org/darron/serf-cookbook)

The cookbook provides the following Rake tasks for testing:

    rake integration                  # Alias for kitchen:all
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-centos-64    # Run default-centos-64 test instance
    rake kitchen:default-ubuntu-1204  # Run default-ubuntu-1204 test instance
    rake lint                         # Lint Chef cookbooks
    rake rubocop                      # Run rubocop tests
    rake spec                         # Run ChefSpec examples
    rake tailor                       # Run tailor tests
    rake taste                        # Run taste tests
    rake test                         # Run all tests

License and Author
------------------

Author:: YOUR_NAME (YOUR_EMAIL)

Copyright:: YEAR, YOUR_NAME

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Contributing
------------

We welcome contributed improvements and bug fixes via the usual workflow:

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request