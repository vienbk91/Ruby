# Bài 1: Nhập số và in ra bảng cứu chương
# Bài 2: Tính tổng của dãy số
# Bài 3: Vẽ tam giác vuông
# Bài 4: Vẽ tam giác cân
# Bài 5: Thoát và xuất lời chào

loop do

	puts "Moi ban chon:"
	puts "1. Bang cuu chuong"
	puts "2. Tinh tong cua day so"
	puts "3. Ve tam giac vuong"
	puts "4. Ve tam giac can"
	puts "5. Thoat"

	# Nhập vào lựa chọn tương ứng menu
	index = gets.chomp

	if index.to_i == 1
		# Tạo bảng cửu chương của x với x nhập từ bàn phím 
		puts "Chuong trinh in ra bang cuu chuong cua x. Moi ban nhap x (1 < x < 9)"
		x = gets.chomp
		puts "- - - - Ket qua - - - -"
		(1..9).each{
			|i|
			tich = x.to_i * i
			puts "#{x} x #{i} = #{tich}"
		}
		puts "- - - - - - - - - - - -"
		puts "Nhap \"y\" de quay lai menu chinh . Nhap ky tu khac de thoat."
		thoat = gets.chomp
		if thoat == "y"
			next
		else
			puts "Chuc ban 1 ngay vui ve !!!"
			break
		end
	elsif index.to_i == 2
		# Tính tổng của các số nguyên từ 0 đến x với x nhập từ bàn phím
		puts "Chuong trinh se tinh tong cac so nguyen tu 0 den x. Moi ban nhap x (x > 0)"
		a = gets.chomp
		puts "- - - - Ket qua - - - -"
		a = a.to_i
		tong = 0
		(0..a).each{
			|a|
			tong += a
		}
		puts "Tong cua day so tu 0 den #{a} la : #{tong}"
		puts "- - - - - - - - - - - -"
		puts "Nhap \"y\" de quay lai menu chinh . Nhap ky tu khac de thoat."
		thoat = gets.chomp
		if thoat == "y"
			next
		else
			puts "Chuc ban 1 ngay vui ve !!!"
			break
		end
	elsif index.to_i == 3
		# In ra tam giác vuông
		puts "- - - - Ket qua - - - -"
		for i in 1..11 do 
			puts "* " * i
		end
		puts "- - - - - - - - - - - -"

		puts "Nhap \"y\" de quay lai menu chinh . Nhap ky tu khac de thoat."
		thoat = gets.chomp
		if thoat == "y"
			next
		else
			puts "Chuc ban 1 ngay vui ve !!!"
			break
		end
	elsif index.to_i == 4

		puts "- - - - Ket qua - - - -"
		# Phần code xử lý cho bài 4 chưa được hoàn thành
		# Start code



		#End code
		puts "- - - - - - - - - - - -"

		puts "Nhap \"y\" de quay lai menu chinh . Nhap ky tu khac de thoat."
		thoat = gets.chomp
		if thoat == "y"
			next
		else
			puts "Chuc ban 1 ngay vui ve !!!"
			break
		end
	elsif index.to_i == 5
		puts "Chuc ban 1 ngay vui ve !!!"
		break
	end
end