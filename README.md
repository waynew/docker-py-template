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
