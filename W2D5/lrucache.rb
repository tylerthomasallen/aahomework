class LRUCache
   def initialize(size)
     @size = size
     @cache = []
   end

   def count
     @cache.length
     # returns number of elements currently in cache
   end

   def add(el)
     if @cache.include?(el)
       @cache.delete(el)
       @cache << el
     elsif self.count >= @size
       @cache.shift
       @cache << el
     else
       @cache << el
     end
   end

   def show
     p @cache
     nil
   end


 end
