class Child < ActiveRecord::Base
  attr_accessible :bank, :dob, :image, :name, :total, :age
  
  before_save :calculate_bank
  before_save :running_total
  before_save :age
  
  validates :name, presence: true
  
  has_many :rewards
  has_many :chores
  
  # mount_uploader :image, ImageUploader
  
  
  # sort this out in the morning so you're not repeating but this will work as quick hack
  # then use it to calculate levels showing an alert saying kids can have 
  
  def running_total
    run_total = 0
    self.chores.where(completed: true).each do |chore|
      run_total += chore.points
    end
    
    self.total = run_total
  end
  
  #fix this, add credit and debit methods
  
  def calculate_bank
    
    bal = 0

    self.chores.where(completed: true).each do |chore|
      bal += chore.points
    end

    self.rewards.where(rewarded: true).each do |reward|
      bal -= reward.costs
    end
       
    self.bank = bal
  end
  
  
  # theres prolly some sort of regex thing that deals with all
  # the things like leap years etc. have a look
  def age
    current_year = Time.now.year
    birthday_year = self.dob.year
    self.age = current_year - birthday_year
  end
  
  
 
  
end
