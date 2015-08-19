# PI: Đây là biến toàn cục và được đăt ở ngoài lớp 
# Có thể gọi biến toàn cục ở bất cứ nơi nào
# Cách viết bắt đầu bằng dấu $
# Chú ý trong Ruby thì phân biệt chữ hoa chữ thường nên $pi và $PI là khác nhau
$PI = 3.14 # global variables

class Nguoi

	# GIOI_TINH: Hằng số, được viết hoa toàn bộ
	# Giá trị chỉ được gán 1 lần, ko thể thay đổi
	GIOI_TINH = ["nam" , "nu"] #constants


	#Contructor
	def initialize(ten,gioitinh)

		# Biến instance bắt đầu bằng ký tự @ kèm theo tên biến
		# Nó được sử dụng trong phạm vi lớp 
		# Chứ ko bị hạn chế trong pham vi phương thức như biến Local
		@ten = ten #instance variables
		@gioitinh = gioitinh

	end


	def thongtin
		puts "Chao #{@ten} ! Ban bao nhieu tuoi roi? "
		# tuoi: Biến cục bộ được viết thường
		# Biến cục bộ chỉ có tác dụng trong phương thức chứa nó
		# Ra ngoài phạm vi phương thức này thì nó sẽ ko sử dụng được
		# Các phương thức ko chứa nó sẽ ko thể gọi được biến này
		tuoi = gets.chomp #local variables
		puts "Ban than la #{@gioitinh} va tuoi la #{tuoi}"
	end

end


lan = Nguoi.new("Lan","nu")
lan.thongtin


a = 10
puts a
