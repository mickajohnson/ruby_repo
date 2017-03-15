hash = {first_name: "Mick", last_name: "Johnson"}

def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end
new_user
new_user "Hello", hash

hash.delete :last_name
puts hash
puts hash.has_key? :first_name
puts hash.has_key? :last_name
puts hash.has_value? "Mick"
puts hash.empty?
hash.delete :first_name
puts hash.empty?
