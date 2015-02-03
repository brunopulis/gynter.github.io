---
layout: post
title: ANSI Select Graphic Rendition in Python
date: 2015-02-03 20:00:00
tags:
- python
- ansi sgr
- terminal
- style
- color
---

![ANSI SGR in Python]({{site.baseurl}}/media/posts/2015/ansi_sgr.png)


The code in [this gist][] gives an easy way to use [ANSI SGR 
parameters][] in terminal using Python.

The code is lightweight and thou it also already has an example I'll 
explain a bit more how to use it.

  [this gist]: https://gist.github.com/gynter/9233704
  [ANSI SGR parameters]: https://en.wikipedia.org/wiki/ANSI_escape_code#graphics

---

#### Examples

First we need to import the module:

{% highlight python %}
from ansi_sgr import *
{% endhighlight %}

The example below prints all defined SGR codes as their corresponding 
styles (RED as red, and BOLD as bold):

{% highlight python %}
for idx, code in enumerate(CODE_MAP):
    if code:
        print ftt(code, idx)
{% endhighlight %}

This example combines multiple SGR codes and produces yellow bold text 
on green background:

{% highlight python %}
print ftt('Yellow bold text on green background', 'YELLOW', 'BOLD', 'BG-GREEN')
{% endhighlight %}

Also, the order is irrelevant, the code below gives same result as the 
code above:

{% highlight python %}
print ftt('The order is irrelevant', 'BG-GREEN', 'YELLOW', 'BOLD')
{% endhighlight %}

The last code of same type takes precedence:

{% highlight python %}
print ftt("As long as same type of style isn't overwritten", 'BG-GREEN', 'YELLOW', 'BOLD', 'BG-RED')
{% endhighlight %}
