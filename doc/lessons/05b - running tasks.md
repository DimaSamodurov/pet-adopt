# Running tasks, the Ruby way.

"Working as a developer I periodically execute many commands/tasks like:

- run tests on entire application
- deploy on test server
- import test data into local database
- generate a report

Some tasks are complex, require maintenance, and deserve a separate project. I would like to be able to share my tasks and consume tasks written by others.
Some tasks require another task to be executed before as a dependency. I would like to be able to chain tasks.

In order to easily and effectively use common tasks in my application and be able to build and share new tasks, 
i would like to have a "standard way to define tasks" and a tool following the standards.

Rake, Thor - are such a tools in Ruby ecosystem.

https://ruby.github.io/rake/
http://whatisthor.com/

