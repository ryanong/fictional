module Fictional
  class Phone
    attr_accessor :number
    
    def initialize (data)
      @number = data[:number]
    end
   
    def self.number
      rand(100..999).to_s+"-"+rand(100..999).to_s+"-"+rand(1000..9999).to_s
    end
    
    def self.build
      new(number: number)
    end
    
  end
end
