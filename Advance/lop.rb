# Lớp trong Ruby

################################################
## Lớp cơ bản
################################################
# Xây dựng bằng từ khóa class và kết thúc bằng end
class test

end
# Tạo ra 1 đối tượng vienchu thuộc lớp người
vienchu = test.new

# Khởi tạo giá trị cho các thuộc tính của đối tượng vienchu

vienchu.ten = "Vien"
vienchu.ho = "Chu"
vienchu.sothich = "Doc sach"
vienchu.website = "http://ChickenRain.com"


# Gọi giá trị
puts vienchu.ten + vienchu.ho #VienChu

################################################
## Lớp có phương thức khởi tạo
################################################
class Nguoi

	# Để lưu các thông tin của lớp người thì ta sẽ thêm thuộc tính cho nó
	# Khai báo thuộc tính bằng từ khóa attr_accessor
	attr_accessor :ten , :ho , :sothich , :website

	# Hàm khởi tạo được bắt đầu với từ khóa
	# def initialize(các thuộc tính muốn khởi tạo)

	def initialize(ten,ho,sothich,website)
		# Biến instance bắt đầu bằng ký tự @ đi kèm tên biến
		# Sử dụng trong phạm vi lớp
		@ten = ten
		@ho = ho
		@sothich = sothich
		@website = website
	end
end

# Bên cạnh việc ta đi gán giá trị cho từng thuộc tính của đối tượng
# Thì ta có thể sử dụng hàm khởi tạo để có thể khởi tạo trực tiếp giá trị cho các thuộc tính
#Việc sử dụng hàm khởi tạo contructor sẽ giúp ta rút ngắn được thời gian rất nhiều
# Thay vì phải ngồi khởi tạo giá trị cho các thuộc tính thì ta có thể gán trực tiếp nó vào
kimsan = Nguoi.new("Kim" , "Jongun" , "Doc sach" , "http://ChickenRain.com")

puts kimsan

