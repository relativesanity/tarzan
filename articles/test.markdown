Article title

Article: 20130101

Here's an *awesome* little published example article for you, formatted in [markdown], as you would
probably expect.

The format is pretty simple:

    Article title

    Article-type: publication date

    Actual content of the article

Draft articles are set by removing the publication date:

    Article title

    Draft

    Actual content of the article

They're available in the [preview area] by logging in, as are future-dated articles. On load, any
articles in the storage area are cached if they can be. To refresh the cache, visit the
[reload page], also available by logging in.

Configuration is handled modified in `app/config/initializers/chimpdoc.rb`, where a series of
site-specific options can be set.

Bear in mind that this is simply an example of a Rails app backed by [Chimpdoc]. It's very similar
to the app running [Relative Sanity], but it's intended as a starting point, not a supported CMS.

[markdown]: http://daringfireball.net/projects/markdown/
[preview area]: /previews
[reload page]: /reload
[Chimpdoc]: http://github.com/relativesanity/chimpdoc
[Relative Sanity]: http://www.relativesanity.com/
