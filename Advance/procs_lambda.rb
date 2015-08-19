# Proc và Lambda trong Ruby

#######################################################
## Block
#######################################################
m = [1,2,3,4,5]
n = [10,20,30,40,50]

# Xây dựng 1 hàm có sử dụng block

def double_block(x)
	if block_given?
		yield x*2
	else
		puts "Khong co block"
	end
end


puts "Mang m_block"
puts m.map {
	|arr| # Đưa từng phần tử của mảng m vào arr

	#Gọi tới hàm double_block
	double_block(arr){ # Cho arr trở thành tham số của block
		|x| # Gán giấ trị tham số truyền vào trong yield vào biến x, ở đây x = arr*2
		"#{x}" # Thực thi in ra x
	}
}

puts "Mang n_block"
puts n.map{ |arr| double_block(arr){|x| "#{x}"}}

#######################################################
## Proc
#######################################################

# Ta nhận thấy 2 đoạn code có nội dung hoàn toàn giống nhau
# Vì vậy ta sử dụng proc để ghép nó lại

double_proc = Proc.new do
	|t|
	t*2
end

#Bây giờ thay vì viết đoạn code dài như trên ta chỉ cần gọi proc đã tạo
# Chú ý proc được đặt trong () thay vì {} như trong block
puts "Mang m_proc"
puts m.map(&double_proc)
puts "Mang n_proc"
puts n.map(&double_proc)


#######################################################
## Lambda
#######################################################

double_lambda = lambda do
	|k|
	k*2
end

puts "Mang m_lambda"
puts m.map(&double_lambda)
puts "Mang n_lambda"
puts n.map(&double_lambda)


#######################################################
## Phân biệt Proc và Lambda
#######################################################
=begin

Ta có thể truyền nhiều tham số vào trong proc mà ko sử dụng thì khi run chương trình
cũng sẽ không có thông báo lỗi

double_proc = Proc.new do
	|t,k,x,y| # 4 tham số truyền vào
	t*2
end

puts m.map(&double_proc) # Không phát sinh lỗi

Tuy nhiên Lambda thì có bao nhiêu tham số được khai báo thì cần sử dụng toàn bộ, nếu
không sẽ có lỗi

double_lambda = lambda do
	|k,m| # Truyền vào lambda 2 tham số
	k*2
end

puts m.map(&double_lambda) # Thông báo lỗi do thiếu argument
	
=end


=begin
		
=end