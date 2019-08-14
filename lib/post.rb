class Post
  attr_accessor :name, :title, :author
  @@all = []

  def initialize(name)
    @name = name
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
  
  def author_name
    if self.author
      self.author.name
    else
      return nil
    end
  end
end

  