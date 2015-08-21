# Đây là phần thực hành về block, proc và lambda trong Ruby

# Trước hết nhắc lại : block là gì ?


=begin 

# Block là thành phần, câu lệnh nằm trong {} nếu nó là 1 dòng
Còn nếu nó nhiều dòng thì block chính là thành phần, câu lệnh nằm trong do..end

Đây là cách khai báo 1 block
C1: { # Thân block }
C2: 
do
  # Thân block
end

VD1: Sử dụng yield để gọi tới block
VD2: Truyền tham số vào block thông qua yield

Khi sử dụng block thì ta chú ý tới 1 câu lệnh gọi là yield
yield chính là định danh của block

yield là cách gọi block , ngoài ra bạn có thể truyền tham số vào yield bằng cách viết cạnh nó



=end 
puts "============= VD1 ============"
def test_block
	puts "This is block test function"
	yield
	puts "This is block test function too"
	yield 
end

# Gọi phương thức và khai báo nội dung block
test_block { puts "This is yield statement" }

puts "============= VD2 ============"
def test_block_yield
	puts "This is block test function"
	yield 5 , "Chu Vien"
	puts "This is block test function too"
	yield 100,5
end

# Đây là block đơn
test_block_yield { |thamso1 , thamso2| puts "This is yield statement #{thamso1} va #{thamso2}" }