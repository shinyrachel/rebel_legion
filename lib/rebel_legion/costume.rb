class RebelLegion::Costume
  attr_accessor :name, :url, :details 
  attr_reader :costume_category

  @@all = []

  def initialize(name, costume_category, url) 
    @name = name
    self.costume_category = costume_category
    @url = url
    @details = []
    @@all << self
  end

  def self.all
    @@all
  end

  def costume_category=(category)
    @costume_category = category
    category.add_costume(self)
  end

  def view_details
    details.each.with_index(1) do |detail, i|
      puts "#{i}. ".colorize(:yellow) + "#{detail}"
    end
    puts "For more info, visit #{url.colorize(:light_cyan)}"
  end
end