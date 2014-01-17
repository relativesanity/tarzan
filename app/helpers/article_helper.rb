module ArticleHelper

  def format_article(article)
    case article.format
      when '.markdown', '.md' then markdown(article.content)
      else article.content
    end
  end

  def article_style(article)
    article.style.downcase.to_param
  end

end
