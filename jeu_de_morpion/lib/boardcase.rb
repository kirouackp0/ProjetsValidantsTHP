class BoardCase 
    attr_accessor :value, :cell_id
    
    def initialize(cell_id)
        @value = ' '
        @cell_id = cell_id
    end
end 