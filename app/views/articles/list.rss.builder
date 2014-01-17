xml.instruct! :xml, :version => '1.0'
xml.rss :version => '2.0' do
  xml.channel do
    xml.title site_title
    xml.description site_subtitle
    xml.link site_url

    for article in @articles
      xml.item do
        xml.title article.title
        xml.description format_article article
        xml.pubDate article.published_on.to_time.to_s(:rfc822)
        xml.link full_article_url(article)
        xml.guid full_article_url(article)
      end
    end
  end
end
