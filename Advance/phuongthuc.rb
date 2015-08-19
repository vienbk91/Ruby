#Phương thức trong Ruby

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

# Khai bao đối tượng vienchu với các thuộc tính
vienchu = Nguoi.new("Chu","Vien",23,"Nau an","http://xvideos.com")
puts vienchu.ten

# Thực thi các phương thức bằng cách sử dụng toán tử "."
puts "Nang luong ban dau : #{vienchu.nangluong}"
vienchu.thucday
puts "Nang luong sau khi thuc day: #{vienchu.nangluong}"
vienchu.an
puts "Nang luong sau khi an : #{vienchu.nangluong}"
vienchu.lamviec
puts "Nang luong sau khi lam viec: #{vienchu.nangluong}"