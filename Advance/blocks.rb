# Block chính là những thành phần câu lệnh nằm trong dấu ngoặc nhọn {} nếu nó nằm trên 1 dòng
# Hoặc nằm trong do...end nếu là nhiều dòng

#Ví du:
# Một dòng 
# { puts "Day la Ruby Advance"}
# Nhiều dòng
# do
#    puts "Ruby"
# end


# Sử dụng block trong hàm
def chickenrain(&block)
	if block_given?  # Kiểm tra block có tồn tại hay ko
		block.call #block ở đây chính là tên biến truyền vào
	else
		puts "Khong co block"
	end
end

#Khai báo có block
chickenrain{puts "Day la bai hoc ve Block"}

#Khai báo không có block
chickenrain  # Kết quả: Không có block
# Không có block nên chương trình đã báo lỗi
#Vì vậy ta sử dụng 1 hàm check block có tôn tại hay chưa đó là block_given?
#Nếu kết quả trả về tru nghĩa là có block , flase nghĩa là ko có block



# Ngoài ra thì Ruby có hỗ trợ thêm 1 từ khóa yield để lập trình nhanh hơn
# Nó giúp ta có thể ko cần nhớ tên block và cũng ko cần khai báo block
# yield sẽ đại diện cho nội dung bên trong block
# Nếu muốn truyền tham số vào trong yield thì ta viết tham số bên cạnh yield
def hocruby(name)
	if block_given?
		yield name
	else
		puts "Khong co block"
	end
end

# Tham số sẽ được gọi như sau
# "Vien Chu" - giá trị của tham số truyền vào
# |name| - biến đại diện cho tham số truyền vào
hocruby("Vien Chu"){ |name| puts "Xin chao #{name}"}