------------------------------------------------------------------------
gynter.github.io - Homepage of Günter Kits
========================================================================
------------------------------------------------------------------------

1. Description
2. License
3. Building on *nix
4. Support
5. Contributing
6. Author

1. Description
--------------

gynter.github.io provides a simple responsive Jekyll template using 
Bootstrap, jQuery and Font Awesome. It also contains the content of my 
homepage <http://kyber.kits.ee>.

It is based on a work "Simplex" created by Thomas Park 
<hello@thomaspark.co> and "Bootstrap 3 Affix Sidebar" created by Carol 
Skelly at Bootply.com.

The Jekyll configuration is defined and documented in `_config.yml`. 

Thanks to Michael Lanyon for [tags alphabetizing code](http://blog.lanyonm.org/articles/2013/11/21/alphabetize-jekyll-page-tags-pure-liquid.html).

2. License
----------

This software is licensed as described in the file `LICENSE.markdown`, 
which You should have received as part of this distribution. The terms 
are also available at 
<https://github.com/gynter/gynter.github.io/blob/source/LICENSE.markdown>.

4. Building on *nix
-------------------

Building dependencies: 

- [Ruby][]

Easiest way is to get those from the official website or via package
repository.

Install [Bundler][] using [RubyGems][] as root:

    sudo gem install bundler

Install [Jekyll][] and related gems using [Bundler][]:

    bundle install --path vendor/bundle

*Note: it's not recommended to install packages with [Bundler][] as
root!*

Build the code:

    bundle exec jekyll build

4. Support
----------

Issue tracker can be found at
<https://github.com/gynter/gynter.github.io/issues>.

5. Contributing
---------------

- Files containing HTML syntax must have `.html` extension;
- Use `.markdown` extension for markdown files only;
- Use only imperative mood in commit messages:
  - Bad: "Fixing issue A";
  - **Good: "Fix issue A"**;
  - Bad: "Added feature B";
  - **Good: "Add feature B"**.
- Write code as much as possible according to the rules described in
  [PEP 8 - Style Guide for Python Code][PEP-8]. Try to use same style
  for all programming languages.

6. Authors
----------

  - Günter Kits (gynter@kits.ee)


  [Bundler]: http://bundler.io/
  [Jekyll]: http://jekyllrb.com/
  [PEP-8]: https://www.python.org/dev/peps/pep-0008/
  [Ruby]: https://www.ruby-lang.org/
  [RubyGems]: https://rubygems.org/
