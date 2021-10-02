require 'pry-byebug'
module Enumerable
    def my_each
        if block_given?
        items = self
       
        i = 0
        while i < items.length
            yield(items[i])
            i += 1
        end
    end 
    puts "no block entered!"
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
        items = self
        my_proc = Proc.new { |check, items_spot| check === items_spot }
        i = 0
        binding.pry
        while i < items.length do
        my_proc.call(arg,items[i])
        i += 1
        end
        my_proc.call(arg,items[i])
    end

        def my_none?(arg)
            items = self
            my_proc = Proc.new { |check, items| check == items }
            i = 0
            while my_proc.call(arg,items[i]) do
                i += 1
            end
            !my_proc.call(arg,items[i - 1])
           
        end

        def my_count(item)
            items = self
            my_proc = Proc.new { |item, items_spot| item == items_spot}
            count = 0
            spot_number = 0
            while spot_number < items.length do
            if (my_proc.call(item,items[spot_number]))
                count += 1
            end
            spot_number += 1
        end
        count
        end

        def my_map 
        items = self
        result = []
            if block_given?
                i = 0
                items.length.times do 
                result.push(yield(items[i]))
                i += 1
                end

            end
            result
        end

        def my_inject
    
            standard_proc = Proc.new { |item, items| }
            items = self
            if block_given?
                base_sum = 0
                i = 0
                base_sum += yield(items[i],items[i + 1])
                i += 1
                while i != items.length - 1 do 
                    i += 1  
                    base_sum = yield(base_sum,items[i])
                end
                base_sum

            end
             
        end

        

end 
def multiply_els(args)
    multiply = args.my_inject { |accumulator,value| accumulator * value}
    return multiply

end
def throwaway
    i = 0
      
        while i < items.length + 1
          if (items[i] == arg )
            return true
          elsif (i == items.length + 1)
            return false
          end
            i+= 1
        end
    end