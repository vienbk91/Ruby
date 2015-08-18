a = 10

# In 1 chuỗi ra màn hình 
puts a

# In ra 1 chuỗi kèm theo 1 biến
puts "Gia tri cua bien a la #{a}"

# Lấy giá trị nhập từ bán phím
puts "Hay nhap gia tri cho bien b"
b = gets # Hàm nhập dữ liệu từ bàn phím
puts "Gia tri cua bien b vua nhap la : #{b}"

# Câu điều kiện trong ruby
# Sử dụng các toán tử == , >= , <
c = 1

if c == 10
	puts "Bien c bang 10"
elsif c == 8
	puts "Bien c bang 8"
else
	puts "Khong biet"
end


# Chú ý cách sử dụng gets và gets.chomp

puts "Ten ban la gi?"
ten = gets.chomp
#ten = gets
puts "Xin chao #{ten}! Chuc ban 1 ngay vui ve !"

if ten == "vien"
	puts "Ban da hoan thanh bai tap"
else
	puts "Ban chua hoan thanh bai tap"
end
