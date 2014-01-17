module ApplicationHelper

  def page_title
    prefix = @page_title || content_for(:page_title)
    [prefix, site_title].reject(&:blank?).compact.join(' - ')
  end

  def site_title
    BLOG_TITLE
  end

  def site_description
    BLOG_DESCRIPTION
  end

  def site_subtitle
    BLOG_SUBTITLE
  end

  def article_date
    return "" unless @article.present?
    tag(:meta, :name => "publication-date", :value => @article.published_on)
  end

end
