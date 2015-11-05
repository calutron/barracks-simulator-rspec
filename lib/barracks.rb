class Barracks

  attr_reader :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def train_footman
  
    if can_train_footman? == true 
      @gold = @gold - 135
      @food = @food - 2
      Footman.new
    end
  end 

  def can_train_footman?
      food >= 2 && gold >= 135
  end

  def train_peasant
  
    if can_train_peasant? == true 
      @gold = @gold - 90
      @food = @food - 5
      Peasant.new
    end
  end 

  def can_train_peasant?
      food >= 5 && gold >= 90
  end

  # gold  = it has to be false and return 134
  # food = it has to be false and return 1 


# if can_train_footman? = 

# food >= 2 && gold >= 135
#   true 

    #if not enough gold returns false 
    #if enough goal returs true

    # expect(@barracks).to receive(:gold).and_return(134)
    # expect(@barracks.can_train_footman?).to be_false

    #  expect(@barracks).to receive(:food).and_return(1)
    #   expect(@barracks.can_train_footman?).to be_falsey


end
