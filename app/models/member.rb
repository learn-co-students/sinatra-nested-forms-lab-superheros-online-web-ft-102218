class Member
  attr_accessor :name, :power, :bio

  @@members = []
  def initialize(args)
    args.each do |k,v|
      send("#{k}=", v)
    end
    self.class.all << self
  end

  def self.all
    @@members
  end
end