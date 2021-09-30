require 'pry-byebug'
module Enumerable
    def my_each
        items = self
       
        i = 0
        while i < items.length
            yield(items[i])
            i += 1
        end
    end

    def my_each_with_index
        items = self
        i = 0
        while i < items.length
            yield(items[i],i)
            i +=1
        end
    end
end 