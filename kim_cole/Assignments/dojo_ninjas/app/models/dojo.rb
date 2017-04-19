class Dojo < ActiveRecord::Base
  has_many :ninjas

  validates :name, :city, presence: true
  validates :state, presence: true, length: { is:2 }
  
  # this callback will run after creating a new dojo
  after_create :successfully_created
  
  # this callback will run after updating an existing dojo
  after_update :successfully_updated
  

  
  private    
    def successfully_created
      puts "Successfully created a new dojo"
    end
    def successfully_updated
      puts "Successfully updated a existing dojo"
    end

end
