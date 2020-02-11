def nyc_pigeon_organizer(data)
   names_as_key = {}
  
  data.each do |key1, inner_hash|
    inner_hash.each do |key2, name_array|
      name_array.each do |name|
        if !names_as_key.has_key?(name)
          names_as_key[name] = {}
        end
        
        if !names_as_key[name].has_key?(key1)
          names_as_key[name][key1] = []
        end
        
        if !names_as_key[name][key1].include?(key2)
          names_as_key[name][key1] << key2.to_s
        end
      
    
      end
    end  
  end
  names_as_key
  
  
end
