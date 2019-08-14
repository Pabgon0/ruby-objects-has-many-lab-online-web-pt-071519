class Author
  attr_accessor :name
  @@count = 1
  
  def initialize(name)
    @name = name
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@count +=1
  end
  
  def posts
    Post.all.select do |post|
      post.author == self
    end
  end
  
  def self.post_count
    @@count
  end

end