# raku-tidbits

[![raku](https://img.shields.io/badge/raku-v6.d-blue.svg)](https://rakudo.org/downloads/star/)
[![rakudo](https://img.shields.io/badge/rakudo-2020.02.1-blue.svg)](https://rakudo.org/downloads/star/)


This is a docker container with a **raku** kernel in jupyter notebook, running **tidbits** notebook to demonstrate a few features of raku.
It is meant as simply a quick look at a few interesting thingsin the **raku** implementation that might not be easily available in some
other languages.


## How to run using [Binder](https://mybinder.org/) ?


+ Click here: [![Binder](https://github.com/tigerpaws2/raku-tidbits/blob/master/imgs/binder-logo.svg)](https://mybinder.org/v2/gh/tigerpaws2/raku-tidbits/master?filepath=tidbits.ipynb)
+ Wait a few seconds. Binder will open directly into the **tidbits** notebook.



## How to run this image in your local computer ?

Assuming you have a running docker installation, you can clone the [raku-tidbits](https://github.com/tigerpaws2/raku-tidbits) github repo.

You can then build the container easily with 

`docker build -t raku-tidbits .` 

from the project directory.  Once the container is built, start it with 

`docker run -it -p 8888:8888 raku-tidbits` 

and access it in your browser using the link provided in the docker output.


There you are running the notebook.

For detailed instructions, [see here](https://sumankhanal.netlify.com/post/raku_notebook/).

![](https://github.com/sumanstats/raku-notebook/blob/master/imgs/notebook.PNG)

**Happy reading** !
