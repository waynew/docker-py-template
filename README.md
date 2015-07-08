# docker-py-template
Docker template for Python projects

## Quickstart

    $ git clone git@github.com:waynew/docker-py-template.git
    $ cd docker-py-template
    $ ./bootstrap.sh

Then you wait for a while as it builds the python package and the docker image.

    $ docker run --rm myapp:1 -m mystuff.app
    Totally main
    Whatever!

Sweet sweet success. Of course, you probably want to be able to develop.
Luckily for you, there's an app for that.

    $ ./devel.sh
    Totally main
    Whatever!

Now you can change things up...

    $ sed -i 's/Whatever/Forever' mystuff/app.py
    $ docker start -a myapp-dev
    Totally main
    Forever!

Cool, eh?

## Where Do I Go From Here?

This particular demo application comes with a dependency on Flask, so if you
already know Flask, you should be able to modify app.py to run a 
[simple Flask app](http://flask.pocoo.org/) and then rerun `docker start -a
myapp-dev`. Or skip the `-a` and use `docker logs myapp-dev` to keep tabs on
your app.

Chances are, though, you want to customize this because let's face it,
`mystuff` is a silly name for an app.

You'll need to do a few things:

- rename the folder `mystuff` to something cooler
- change the information in `setup.py` to point to your own repository/contact
  info/package name/version
- change the `COPY` and `RUN` commands to point to your new package
  name/version
- change `bootstrap.sh`, at least if you want a different docker image
  name/version
- change `devel.sh` to use the new docker image & folder names
- ???
- profit!

If you have any questions, please open an issue. Thanks!
