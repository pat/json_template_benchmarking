# JSON Template Library Benchmarks

Currently extremely simple, comparing [Jbuilder](https://github.com/rails/jbuilder), [ActiveModel::Serializers](https://github.com/rails-api/active_model_serializers), [Roar](https://github.com/apotonick/roar), and [Oat](https://github.com/ismasan/oat). The latest committed results are [here](OUTPUT.markdown).

Patches are very much welcome for additional benchmarks that you feel are useful, or contributions that tweak libraries to get their best performance.

And of course, this is *just* a performance comparison. There are other aspects to keep in mind when choosing libraries, such as:

* How well maintained are they?
* Do they work with the latest versions of Ruby?
* Do you need something that is separate from Rails?
* Do you have JSON structure requirements, such as JSON-API, JSON-HAL, etc?
* Do you need something that handles serialising in formats other than JSON?

Also, these benchmarks are run on a single version of Ruby, and within the context of a Rails app - doesn't hurt to run them yourself on your expected setup.

## Running it yourself

```
bundle install
rake db:create db:migrate RAILS_ENV=production
rake benchmarks:all RAILS_ENV=production
```

Or, use the `benchmarks:write` to regenerate the [OUTPUT.markdown](OUTPUT.markdown) file. Using the production environment is recommended, to have templates cached appropriately (and thus, a better reflection of a real production environment).

## Contributing

Please note that this project is released with [a Contributor Code of Conduct](http://contributor-covenant.org/version/1/0/0/). By participating in this project you agree to abide by its terms.

## Licence

Copyright (c) 2016. Developed and maintained by Pat Allan, and released under the open MIT Licence. It was strongly influenced by the work of [Kirill Platonov](https://kirillplatonov.com/2014/11/04/active_model_serializer_vs_jbuilder/) - I've just neatened things up, updated gem versions and added more libraries in.
