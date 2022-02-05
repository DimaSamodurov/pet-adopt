When developing locally or having a single server instance you could profile manually:

- when you can instrument the code: [stackprof](https://github.com/tmm1/stackprof)
- when you can inspect a running process: [rbspy](https://github.com/rbspy/rbspy)

When you have dosen of instances running, it is less effective to profile a single one. 
You would need to collect information from many instances and analyze. Thus SaaS could be more helpful e.g. [NewRelic](https://newrelic.com/), [Skylight
](https://www.tilde.io/skylight/)
