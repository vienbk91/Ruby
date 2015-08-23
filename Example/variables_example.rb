# Biến trong Ruby

=begin
	Trong Ruby thì biến không cần khai báo kiểu mà nó sẽ tự động nhận kiểu
	Khác với các ngôn ngữ khác là ta cần khai báo kiểu trước khi khai báo biến
	* Khai báo biến
	       tên_biến = giá_trị_gán_cho_biến

	* Cách đặt tên biến
	Trong Ruby thì rất hạn chế sử dụng dấu. Duy chỉ có 1 số ký tự đặc biệt để
	định nghĩa 1 số kiểu dữ liệu đặc trưng..

	Biến cục bộ (local variables): 

=end

# Thiết lập KCODE để cmd có thể định đạng và đọc được những ký tự ko phải tiếng anh
# Sử dụng nếu trong code có tiếng Nhật, tiếng Việt
$KCODE = "utf-8" # $KCODE = "u" cũng có tác dụng tương tự

vien = "Viên"
puts vien



###################################################################
## Phân biệt puts và print trong Ruby
###################################################################

# puts là lệnh in ra màn hình, nó có thể in tất cả những gì được khai báo ngay sau nó
# puts sẽ tự động xuống dòng cứ mỗi khi kết thúc một chuỗi String
puts "Say","Hello","to","the","World"

# print cũng có chức năng in ra màn hình, nhưng khác với puts là nó sẽ cho in liền các đoạn string được khai báo
# Và chỉ xuống dòng khi có ký tự xuống dòng
print "Say","Hello","to","the","World \n"

###################################################################
## Phân biệt %q và %Q trong Ruby
###################################################################
str = 'sushant'

%q[#{str} "mane"]  #%q() không có nội suy ngoại trừ \,[ và ]
#=> "\#{str} \"mane\""

%Q[#{str} "mane"] #%Q() có nội suy
#=> "sushant \"mane\""

%[#{str} "mane"]
#=> "sushant \"mane\""


###################################################################
## Phân biệt biến cục bộ và biến toàn cục
###################################################################
puts "================Global and Local================"

_localVar = "hello" # Biên cục bộ Local Variable
$globalVar = "goodbye" # Biến toàn cục Global Variable

def aMethod
	_localVar = 10
	puts "#{localVar}" #=> 10
	puts "#{$globalVar}" #=> goodbye
end

def anotherMethod
	_localVar = 500 
	@globalVar = "Xin chao"
	puts "#{localVar}" #=> 500
	puts "#{$globalVar}" #=> goodbye
end

aMethod
anotherMethod

puts _localVar #=> hello 
# Do là biến cục bộ nên nó chỉ nhận giá trị khi bên trong hàm, 
# Ra ngoài hàm nó có giá trị như đã khai báo
puts $globalVar #=> goodbye
# Biến cục bộ nên nó ko thay đổi giá trị từ lúc khởi tạo cho đến lúc thay đổi giá trị khác

$globalVar = "Vien Chu"
puts $globalVar # Vien Chu

aMethod #=> 10 , Vien Chu
anotherMethod #=> 500 , Vien Chu



######################################################
## Global Variable - Biến toàn cục
######################################################
# Biến toàn cục sẽ bắt đầu bằng ký tự $
# Nếu chưa đc khởi tạo giá trị thì nó sẽ có giá trị nil và chương trình sẽ đưa ra cảnh báo
# Biến toàn cục được sử dụng trong toàn bộ chương trình
puts "===============Global Variable================="
$global_variable = 10
class Class1
	def print_global
		puts "Global Variable in Class1 is #{$global_variable}"
	end
end

class Class2
	def print_global
		puts "Global Variable in Class1 is #{$global_variable}"
	end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

######################################################
## Instance Variable - Biến thể hiện
######################################################
# Biến thể hiện được bắt đầu bằng ký tự @
# Nếu chưa được khởi tạo thì nó sẽ mặc định có giá trị nil, và chương trình sẽ đưa ra cảnh báo
# Và nó chỉ được sử dụng trong phạm vi lớp khai báo
puts "===============Instance Variable================="
class Customer
	
	# Contructor
	def initialize(id , name , address)
		@cur_id = id
		@cur_name = name
		@cur_addr = address
	end

	def display_details
		puts "Customer id : #{@cur_id}"
		puts "Customer name : #{@cur_name}"
		puts "Customer address : #{@cur_addr}"
	end

	@@no_of_customer = 0
	def total_no_of_customer
		@@no_of_customer += 1
		puts "Total number of customer: #{@@no_of_customer}"
	end
end

class Aclass < Customer
	def get_current_id
		@cur_id += 1
		puts "Current  id : #{@cur_id}"
	end 
end 

#Create object
cust1 = Customer.new(1, "Vien" , "Shinjuku-Tokyo-Japan")
cust2 = Customer.new(2, "Suzuki" , "Yokohama-Japan")
#Call method
cust1.display_details
cust2.display_details

#Test a
test = Aclass.new(3, "ABC" , "Ha Noi ^ Viet Nam")
test.display_details
test.get_current_id