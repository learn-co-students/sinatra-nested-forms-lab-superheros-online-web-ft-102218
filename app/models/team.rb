class Team
  attr_accessor :name, :motto, :members
  def initialize(args)
    args.each do |k,v|
      send("#{k}=", v)
    end
  end
end