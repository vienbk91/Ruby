##########################################################
## Hash trong Ruby
##########################################################
=begin
Trong phần này mình sẽ nhắc lại về Hash cũng như viết 1 vài ví dụ
về các method hay trong hash.

Hash cũng là 1 kiểu lưu trữ giống với mảng, nhưng thay vì sử dụng index thì nó sử dung
cặp key => value.
Có 3 cách khai báo hash thông dụng đó là 
h = Hash.new #=> {}
h = Hash.new("Default Values") #=>{}. Tuy nhiên với key bất kỳ nếu ta ko gán giá trị cho
nó thì nó sẽ nhận giá trị mặc định chính là "Default Values"
h = Hash.new(|key,value|block)


Tuy nhiên để cho đơn giản thì thay vì sử dụng lớp Hash có sẵn ta thường khai báo trực tiếp
h = {} # Như vậy ta đã khái báo 1 hash
h = {"key1" => "value1" , "key2" => "value2" } # Khai báo và khởi tạo giá trị

Nếu muốn truy xuất phần tử của hash ta cũng truy xuát như truy xuất phần tử trong mảng
h["key1"] = value1


=end


# a_test là 1 chuỗi
a_test = "Toi LA Chu Quang Vien"
puts a_test
a_test = a_test.split(" ").map { |x| x.downcase }
puts a_test

# Sử dụng thư viện hỗ trợ việc xuất hash ra màn hình
require "awesome_print"

#######################
## each : Lặp
#######################
# Phương thức each : Lặp các key và value trong hash
hash = { "Ruby" => 1 ,  "Python" => 2 , "Java" => 3  }
ap hash

# Thực thi each

hash.each do 
	|key , value|
	puts "#{key} => #{value}"
end

# Chú ý cách viết và khai báo hash này
hash = { Ruby: 1 ,  Python: 2 , Java: 3  }
ap hash


#######################
## each_key , each_value : Lặp với key , value
#######################

hash.each_key do
	|key|
	puts "Key : #{key}"
end

hash.each_value do
	|value|
	puts "Value : #{value}"

end

#######################
## merge : lệnh ghép
#######################
hash1 = {Ruby: 1 , Python: 2}
hash2 = {Ruby: 3 , Python: 4}
hash3 = hash1.merge(hash2)
ap hash3

#######################
## Kiểm tra sự tồn tại của Key - Value
#######################

hash4 = {Ruby: nil}
puts hash4[:Ruby]
puts hash4[:Python]

puts hash4.has_key?(:Ruby)
puts hash4.has_key?(:Python)

puts hash4.has_value?(nil)
puts hash4.has_value?(1)


#######################
## invert : Đao ngược key thành value và ngược lại
#######################

hash5 = {Ruby: 123 , Python: 2211}
hash5 = hash5.invert
ap hash5 #=> {123 => :Ruby , 2211 => :Python}

# Trong trường hợp hash có giá trị bị lặp thì giá trị sau sẽ ghi đè lên giá trị trước
hash6 = {Ruby: 112 , Java: 112}
hash6 = hash6.invert
ap hash6 #=> {112 => :Java}


########################
# Lấy giá trị của key , value
########################

hash = {Ruby: 1 , Java: 2 , Python: 3}
ap hash.keys # Trả về 1 mảng
puts hash.keys[0] #Ruby
ap hash.values # Trả về 1 mảng
puts hash.key(1) # Lấy key từ value #=> :Ruby
ap hash.values_at(:Ruby , :Python) #=> [1,3]


##########################
## Tạo giá trị mặc định
##########################
# Nếu ta khai báo hash theo cách trên thì hash sẽ ko có giá trị mặc định
# Nhưng nếu ta sử dụng class Hash

hash_default = Hash.new("Vien Chu")
ap hash
puts hash_default["a"]
puts hash_default["b"]
if hash_default["a"] == hash_default["b"]
	puts "#{hash_default["a"]}: Day la gia tri default"
end

hash_block = Hash.new{|key,value| "#{key} don\'t have #{value}"}
ap hash_block
ap hash_block[:Ruby]
ap hash_block[:Python]
hash_block[:Ruby] = 1
hash_block[:Python] = 2

ap hash_block


