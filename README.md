#Doc Links
Doc links lets users catalog useful documentation links, blog posts, and code snippets

Epicodus Conventional Rails Assessment

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/jjidt/doc_links.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Start the rails server:

```console
$ rails s
```
It will now be available locally at `localhost:3000`.

View it online here [Heroku](http://doc_links.herokuapp.com).

##Author
[J.J. Idt](https://github.com/jjidt)

##License
MIT
