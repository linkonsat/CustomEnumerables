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
   
    def my_select
        items = self
        i = 0
        result = []
        while i < items.length
         if (yield(items[i]) == true)
            result.push(items[i])
         end
            i += 1
        end
       return result
    end

    def my_all?(arg)
        arr = self
        puts arg
        case arg
            
        in ^arr, *rest 
           true
        else
           false
        end
    end

    def my_any?(arg)
end 