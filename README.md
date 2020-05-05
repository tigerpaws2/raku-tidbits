# raku-tidbits

[![raku](https://img.shields.io/badge/raku-v6.d-blue.svg)](https://rakudo.org/downloads/star/)
[![rakudo](https://img.shields.io/badge/rakudo-2020.02.1-blue.svg)](https://rakudo.org/downloads/star/)


This is a docker container with a **raku** kernel in jupyter notebook, running **tidbits** notebook to demonstrate a few features of raku.
It is meant as simply a quick look at a few interesting thingsin the **raku** implementation that might not be easily available in some
other languages.


## How to run using [Binder](https://mybinder.org/) ?


+ Click here: [![Binder](imgs/binder-logo.svg)](https://mybinder.org/v2/gh/tigerpaws2/raku-tidbits/master?filepath=tidbits.ipynb)
+ Wait a few seconds. Binder will open directly into the **tidbits** notebook.



## How to run this image in your local computer ?

Assuming you have a running docker installation, you can clone the [raku-tidbits](https://github.com/tigerpaws2/raku-tidbits) github repo.

You can then build the container easily with

`docker build -t raku-tidbits .`

from the project directory.  Once the container is built, start it with

`docker run -it -p 8888:8888 raku-tidbits`

and access it in your browser using the link provided in the docker output. However, any changes you make will be saved in the
container, not on your system. If you wish to save changes (or create additional notebooks), you will need to map your project directory
to the container:

`docker run -it -v ${PWD}:/home/mike/tidbits -p 8888:8888 raku-tidbits`

and modify things in the `tidbits` directory.


For detailed instructions, [see here](https://sumankhanal.netlify.com/post/raku_notebook/).


**Happy exploring** !


**Resources:**


* Raku official website: [Raku.org](https://raku.org)

* Production ready compiler: [Rakudo](https://rakudo.org)

* Raku IDE is [CommaIDE](https://commaide.org), also available as an extension of IntelliJ.

* Raku [Guide]( https://raku.guide) an simple introduction to Raku.


* Most of the material in this notebook comes from a number of presentations available on youtube:

    - [Bruce Gray: Perl6 and the Emergent Program.*](https://www.youtube.com/watch?v=DJCp6k1ts3g&list=PLyCMkx1ksnv_-SeFnc7dTHcv7B1lBiOzk&index=2&t=0s)
	- [Jonathan Worthington: Keynote: Perl 6 Concurrency](https://www.youtube.com/watch?v=hGyzsviI48M&list=PLyCMkx1ksnv_-SeFnc7dTHcv7B1lBiOzk&index=4&t=0s)
	- [Patrick Michaud: Perl 6 for beginners - part 1](https://www.youtube.com/watch?v=ySch4xpoPA0&list=PL4jeAlQS3l2XTvOjihZtvqNKVayLC--AI&index=0)
	- [Patrick Michaud: Perl 6 for beginners - part 2](https://www.youtube.com/watch?v=ycLU424NPUw&list=PL4jeAlQS3l2XTvOjihZtvqNKVayLC--AI&index=17&t=0s)
	- [Bruce Gray: "Perl 6 - Why did they do *that*?"](https://www.youtube.com/watch?v=Jw657US719s&list=PL4jeAlQS3l2XTvOjihZtvqNKVayLC--AI&t=0s)
