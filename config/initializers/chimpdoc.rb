Chimpdoc.config do |c|
  c.cache = Rails.cache
  c.storage(:filesystem) do |s|
    s.directory = File.join(Rails.root,"articles")
  end
  # c.storage(:dropbox) do |s|
  #   s.app = {
  #     :key => DROPBOX_DEV_KEY,
  #     :secret => DROPBOX_DEV_SECRET
  #   }
  #   s.token = {
  #     :key => DROPBOX_CLIENT_KEY,
  #     :secret => DROPBOX_CLIENT_SECRET
  #   }
  # end
end

Blog = Chimpdoc::Blog.new
BLOG_TITLE = "Tarzan"
BLOG_SUBTITLE = "an example"
BLOG_DESCRIPTION = "a sample site running on Chimpdoc."
BLOG_URL = "http://www.relativesanity.com"
BLOG_USER = "owner"
BLOG_PASSWORD = "password"
