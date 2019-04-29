class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
      @name = name
      @posts = []
  end

  def add_posts(posts)
      @posts << posts
      posts.author = self
      @@post_count += 1
  end

  def add_post_by_title(title)
    posts = Post.new(title)
    @posts << posts
    posts.author = self
    @@post_count += 1
  end
  
end