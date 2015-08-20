# Bài tập giải phương trình a+ x = b. Tìm x
#Cú pháp viết hàm là def tên_ham /*Thân hàm*/ end
#Truyền tham số bằng cách đặt tham số trong () bên cạnh tên hàm
puts "==============TEST=============="
def phuongtrinh(a,b)
	#puts "Giai phuong trinh #{a} + x = #{b}: Ta duoc ket qua x = #{b-a}"
	return "Giai phuong trinh #{a} + x = #{b}: Ta duoc ket qua x = #{b-a}"
end

#Gọi hàm
phuongtrinh(10,20)


# Nếu muốn có kết quả trả về thì sử dụng return
ketqua = phuongtrinh(3,10)
puts ketqua

# Nếu khi gọi làm mà ta ko truyền vào đối số thì sẽ báo lỗi vì tham số trong phương trình
# chưa có giá trị mặc định. Khi ko có tham só được truyền vào thì giá trị của tham số sẽ 
# được lấy theo giá trị mặc định

puts "============== Phuong trinh bac nhat ============="
def phuongtrinhbacnhat(a = 0 , b = 0)
	puts "Nhap gia tri cua a:"
	a = gets.chomp
	a = a.to_i
	puts "Nhap gia tri cua b:"
	b = gets.chomp
	b = b.to_i
	return "Giai phuong trinh #{a} + x = #{b}: Ta duoc ket qua x = #{b-a}"
end

# Gọi hàm mà ko truyền đối số thì giá trị của đối số sẽ nhận giá trị mặc định
puts phuongtrinhbacnhat
puts phuongtrinhbacnhat(4,3)


# Hàm xác định 1 số là chăn hay lẻ
puts "================ Xac dinh chan le =================="
def chanle(x =null)
	if x.empty? == true
		return -1
	elsif (x.to_i % 2) == 0
		return 1 #x là số chẵn
	else
		return 0 #x là số lẻ
	end
end

# Main
puts "Nhap tu ban phim:"
a = gets.chomp

b = chanle(a)

puts "Ket qua : "
if b == -1
	puts "Ban chua nhap gia tri"
elsif b == 0
	puts "#{a} la so le"
else
	puts "#{a} la so chan"
end

		
