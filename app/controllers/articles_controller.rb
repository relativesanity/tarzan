class ArticlesController < ApplicationController

  def index
    @page_title = ''
    @article = Blog.cover_article
    render @article.present? ? :show : :index
  end

  def list
    @articles = Blog.feed
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end

  def show
    @article = Blog.fetch_article(params[:slug].to_s.parameterize)
    raise ActiveRecord::RecordNotFound unless @article.present?
  end

end
