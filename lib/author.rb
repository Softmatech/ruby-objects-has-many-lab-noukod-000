class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
      @name = name
      @posts = []
  end

  def add_posts(post)
      @posts << post
      post.author = self
      @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    posts.author = self
    @@post_count += 1
  end

  def self.post_count
      @@post_count
  end

end
