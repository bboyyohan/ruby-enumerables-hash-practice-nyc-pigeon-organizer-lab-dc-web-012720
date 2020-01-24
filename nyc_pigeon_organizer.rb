
require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data[:color].each do |key, value|
    
    value.each do |name|
      if new_hash[name.to_s]
        new_hash[name.to_s][:color] << key.to_s
      else
        new_hash[name.to_s] = {
          :color => [key.to_s]
        }
      end
  end
end
  data[:gender].each do |key, value|
      
    value.each do |name|
      
      if new_hash[name]
        new_hash[name.to_s][:gender] = []
        new_hash[name.to_s][:gender] << key.to_s
      else
          new_hash[name.to_s] = {
            :gender => [key.to_s]
        }
    end
end
end
data[:lives].each do |key, value|
  
  value.each do |name|
    
    if new_hash[name]
      new_hash[name.to_s][:lives] = []
      new_hash[name.to_s][:lives] << key.to_s
     
    else
      new_hash[name.to_s] = {
        :lives => [key.to_s]
      }
      
  end
end
end
 return new_hash
 
end


