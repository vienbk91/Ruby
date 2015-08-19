# Kế thừa trong Ruby

class Nguoi
	# Biến instance sẽ có tác dụng trong tất cả các phương thức và toàn bộ lớp

	# Khai báo các thuộc tính
	attr_accessor :ho, :ten , :tuoi , :sothich, :website , :nangluong

    # Hàm khởi tạo Contructor
	def initialize(ho,ten,tuoi,sothich,website)
		@ho = ho
		@ten = ten
		@tuoi = tuoi
		@sothich = sothich
		@website = website
	end

	# Các phương thức của class
	# Phương thức cũng như hàm. Được bắt đầu bằng từ khóa def và kết thúc bằng end

	def thucday
		puts "#{@ho + @ten} vua thuc day"
		@nangluong = 100
	end


	def an
		puts "#{@ho + @ten} dang an"
		@nangluong += 5
	end

	def lamviec
		puts "#{@ho + @ten} dang lam viec"
		@nangluong -= 5
	end

end

# Kế thừa bằng cách < tên_lớp_được_kế_thừa
class GiaoVien < Nguoi
	# Giáo viên cũng có những thuộc tính và phương thức như lớp Con người
	# Nên thay vì phải coppy toàn bộ code của lớp connguoi thì ta sẽ thừa kế nó



	#Ngoài những thuộc tính có sẵn thì mình có thể khai báo thêm các thuộc tính cho lớp GiaoVien
	attr_accessor :chuyennganh

	# Ta có thể định nghĩa lại phương thức khởi tạo
	def initialize(ho,ten,tuoi,sothich,chuyennganh)
		@ho = ho
		@ten = ten
		@tuoi = tuoi
		@sothich = sothich
		@chuyennganh = chuyennganh
	end

	# Định nghĩa 1 phương thức mới
	def code
		@nangluong -= 5
	end

	#Ghi đè 1 phương thức đã tồn tại của lớp cha
	def an
		@nangluong += 10
	end

end

kokubosan = GiaoVien.new("Hajime" , "Kokubo" , 23 , "Xem phim" , "Coder , Engineer")
puts kokubosan.ten
kokubosan.thucday
kokubosan.code
puts "Nang luong sau khi code : #{kokubosan.nangluong}"
kokubosan.an
puts "Nang luong sau khi an : #{kokubosan.nangluong}"