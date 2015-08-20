=begin
	Đây là phần source code mình code theo mẫu của bài học:
	Học Ruby trong 20 phút
=end
 

######################################################
# Các ví dụ đơn giản về việc khai báo và dùng biến
######################################################
 puts "Xin chao the gioi"
 puts 3+2 # Phép cộng
 puts 3*2 # Phép nhân
 puts 3**2 # Bình phương

 puts Math.sqrt(9) # Phêp lấy căn bậc 2

 a = 3**2
 b = 4**2
 c = Math.sqrt(a+b)
 puts c

######################################################
#Khai báo 1 phương thức
######################################################
def h
	puts "Xin chao the gioi"
end

puts h
puts h()

######################################################
## Truyền tham số cho phương thức
######################################################
def h_ten(ten)
	puts "Xin chao #{ten}"
end

puts h_ten("Vien Chu")

######################################################
## Truyền và khởi tạo tham số cho phương thức
######################################################
def h_thegioi(ten = "The Gioi")
	puts "Xin chao #{ten}"
end

puts h_thegioi("Suzuki") # Không cần () thì chương trình vẫn hiểu "Suziki" là tham số
puts h_thegioi


######################################################
## Lớp
######################################################
class ChaoMung

	# Khai bao 1 thuoc tinh cua lop ChaoMung
	attr_accessor :ten



	# Phương thức khởi tạo
	def initialize(ten = "The Gioi")
		# Khoi tao 1 bien @ten va gan gia tri cho no bang voi bien ten- tham so
		@ten = ten
	end

	#Đinh nghĩa 1 phương thức có tên là xinchao
	def xinchao
		puts "Xin chao #{@ten}"
	end

	def tambiet
		puts "Tam biet #{@ten} ! Hen gap lai"
	end
end

# Khởi tạo đối tượng
chaomung = ChaoMung.new("Vien Chu")
chaomung.xinchao
chaomung.tambiet

# Liệt kê danh sách tất cả các phương thức tồn tại trong class ChaoMung
puts ChaoMung.instance_methods
# Loại bỏ các phương thức được kế thừa, mà chỉ liệt kê các phương thức do mình tạo ra
puts ChaoMung.instance_methods(false)


# Kiểm tra phản hồi từ các đối tượng.
# Nếu đối tượng có phản hồi và cho phép truy nhập sẽ trả về true
# Ngược lại sẽ trả về false
puts chaomung.respond_to?("ten")  # => true. Nếu ko khai báo attr_accessor :ten thì sẽ trả về false
puts chaomung.respond_to?("xinchao") # => true
puts chaomung.respond_to?("to_s") # => true

# Thay đổi giá trị của thuộc tính đối tượng
andy = ChaoMung.new("Andy")
puts andy #=> #<ChaoMung:0x000002ef900>
puts andy.ten #=> Andy
andy.ten = "Vien Chu"
puts andy.ten #=> Vien Chu
puts andy.xinchao # => Xin chao Vien Chu
puts andy.tambiet # => Tam biet Vien Chu ! Hen gap lai
puts andy #=> #<ChaoMung:0x000002ef900>


class MegaChaoMung
	#
	attr_accessor :danh_sach_ten

	# Contructor

	def initialize(danh_sach_ten = "The gioi")
		@danh_sach_ten = danh_sach_ten
	end

	def xinchao
		if @danh_sach_ten.nil?
			puts "..."
		elsif @danh_sach_ten.respond_to?("each")
			@danh_sach_ten.each do
				|name|
				puts "Xin chao #{name}!!"
			end
		else
			puts "Xin chao #{@danh_sach_ten}"
		end
	end


	def tambiet
		if @danh_sach_ten.nil?
			puts "..."
		elsif @danh_sach_ten.respond_to?("join")
			puts "Tam biet #{@danh_sach_ten.join(" , ")}. Hen gap lai!"
		else 
			puts "Tam biet #{@danh_sach_ten}. Hen gap lai!"
		end
	end 
end


# __FILE__: Chứa tên của tập tin hiện tại, $0 là tập tin sử dụng để bắt đầu chương trình
# Khai báo if dưới đây định nghĩa là: Nếu đây là tập tin chính được sử dụng
if __FILE__ == $0

	puts "================================="
	
	# Khởi tạo
	mg = MegaChaoMung.new
	mg.xinchao
	mg.tambiet


	# Đổi tên thành Zeke
	mg.danh_sach_ten = "Zeke"
	mg.xinchao
	mg.tambiet

	# Đổi tên thành danh sách tên
	mg.danh_sach_ten = ["Albert" , "Brenda" , "Charles" , "Dave" , "Engelbert"]
	mg.xinchao
	mg.tambiet

	# Đổi thành rỗng
	mg.danh_sach_ten = nil
	mg.xinchao
	mg.tambiet

end
