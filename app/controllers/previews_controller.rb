class PreviewsController < ApplicationController

  http_basic_authenticate_with :name => BLOG_USER, :password => BLOG_PASSWORD

  def index
    @previews = Blog.preview_feed
    @drafts = Blog.draft_feed
  end

  def show
    @article = Blog.preview_article(params[:slug].to_s.parameterize)
    raise ActiveRecord::RecordNotFound unless @article.present?
    render 'articles/show'
  end

  def reload
    Blog.refresh_articles
  end

end
