module UrlHelper

  def site_url
    BLOG_URL
  end

  def full_article_url(article)
    "#{site_url}#{article_url article}"
  end

  def article_url(article)
    prefix = article.published? ? 'articles' : 'previews'
    "/#{prefix}/#{article.slug}"
  end

end
