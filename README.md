# Chitter

Re-building the Chitter project from Makers on my own!
I realised I hadn't done any real Ruby programming, especially involving databases, in a little while, and wanted to get back into it, so I decided to go ahead and re-do an old project with everything I've learned since then. 
Chitter is a Twitter clone, mostly intended to help learn about integrating a Ruby project with databases, so I haven't put much effort into how the frontend looks, but I'll work on that later.

### setup

Firstly, Chitter requires two psql databases in order to run, one for development and production, and one for testing. The dev/production db is named `chitter` by default, and the test db is named `chitter_test`. Both should run on port 5433. Each db has a table named `cheets` to store the cheets (posts) created using this SQL:

```
	CREATE TABLE cheets (
		text varchar(240),
		time_posted timestamp,
		author varchar(80),
		id int GENERATED ALWAYS AS IDENTITY
	);
```

Install all the necessary gems as usual using `bundle install` and run `rspec` to run the tests.