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

	def display_details()
		puts "Customer id : #{@cur_id}"
		puts "Customer name : #{@cur_name}"
		puts "Customer address : #{@cur_addr}"
	end

	@@no_of_customer = 0
	def total_no_of_customer()
		@@no_of_customer += 1
		puts "Total number of customer: #{@@no_of_customer}"

end

#Create object
cust1 = Customer.new(1, "Vien" , "Shinjuku-Tokyo-Japan")
cust2 = Customer.new(2, "Suzuki" , "Yokohama-Japan")
#Call method
cust1.display_details
cust2.display_details


######################################################
## Class Variable - Biến trong lớp
######################################################

