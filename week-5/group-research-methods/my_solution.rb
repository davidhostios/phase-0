
# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# ok - if the array contains a given letter, keep that element
# and discard any other array elements that do not
# include the given argument parameter. 

# Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   # letter = my_array_finding_method(n, 1)
#   x = source
#   y = thing_to_find
#   my_array_finding_method.each do |x, y| 
#     puts y if y.include?(y) 
    
#   # else source.grep(/a/) do |source|
#   #       source
#   #   end
# end
# end
def my_array_finding_method(source, thing_to_find)
    if source.include?(thing_to_find)
        source.each { |source| puts source} 

    end
end



    # # counter = 0 
    # thing_to_find = array[0]
    # if array.include?(thing_to_find)
    #   puts "There is a t in there!"
    
    # else 
    #   puts "Letter not found!"      
      
    # end



# def my_hash_finding_method(source, thing_to_find)
#     if 
      
#     end

# end

# # Identify and describe the Ruby method(s) you implemented.
# #
#
#

