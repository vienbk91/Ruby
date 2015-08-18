#Vòng lặp while
# Check điều kiện rồi mới thực thi, nếu đk sai thì thoát ra khỏi vòng lặp
puts "======= TEST WHILE======="
i=0
while i <= 10 # Nếu i <=1o thì thực hiện
	puts "Gia tri cua i luc nay la #{i}"
	i += 1
end

puts "Gia tri cuoi cung cua i la: #{i}"

#Vòng lặp until
# Vòng lặp phủ định với while, nếu đk sau nó sai thì nó mới thực hiện hành động
puts "======= TEST UNTIL======="
k = 0
until k > 10 # Nếu k<=10 thì mới thưc hiện
	puts "Gia tri cua k luc nay la #{k}"
	k += 1
end

puts "Gia tri cuoi cung cua k la #{k}"

#Vòng lặp for
#Nếu dùng for thì ta có thể xác định được số phần tử cần duyệt trong vòng lặp
puts "======= TEST FOR======="
array = [0,100,2,3,4,5,6,7,8]

for i in array #array là tên mảng vừa khai báo
	puts "Gia tri cua i la #{i}"
end

# Sử dụng vong lặp for với số lượng phần tử được xác định
# in 0..5 : Duyệt từ phần tử 0 tới phần tử thứ 5
# do :Khai báo hành động thực thi khi lặp
for i in 0..5 do
	puts "Gia tri cua i la #{i}"
end

puts "======= TEST Vong lap long nhau ======="
#Sử dụng vòng lặp bên trong vòng lặp
for i in 0..5 do
	for j in 5..10 do
		puts "Gia tri cua (i , j) la: (#{i} , #{j} )"
	end
end


# Cú pháp điều khiển next
# Khi next được gọi thì nó sẽ bỏ qua tất cả các cú pháp ở bên dưới nó và thực hiện tiếp vòng lặp
puts "======= TEST NEXT ======="
for i in 1..10 do	
	next if i == 2 # Bỏ qua i = 2 và thực hiện tiếp i=3
	puts "Gia tri cua i la #{i}"
end

# Sử dụng next trong While sẽ phát sinh lỗi
# Vì sao lại phát sinh lỗi? Vì lệnh next sẽ bỏ qua tất cả các câu lệnh ở dưới nó
# Vì thế m tăng nhưng ko được thực hiện nhưng m luôn nhỏ hơn 10 nên vòng lặp sẽ ko dừng
puts "======= TEST NEXT IN WHILE ======="
m = 0
while m < 5
	#next if m == 2
	puts "Gia tri cua m la #{m}"
	m += 1
end


# Sử dụng break
# Khi nó được chạy thì nó sẽ dừng vòng lặp lại và thoát khỏi vòng lặp
puts "======= TEST BREAK ======="
for i in 1..6 do
	break if i == 4
	puts "Gia tri cua i la #{i}"
end


# Một số lệnh lặp được Ruby hỗ trợ
# Lặp khi biết số lần lặp cố định(test thử trong môi trường IRB)
puts "======= TEST TIMES ======="
5.times { # 5 là số lần muốn lắp
	puts "Ruby"
}

#Lặp từ a đến b với a,b xác định và a < b
puts "======= TEST UPTO ======="
1.upto(4) { 
	puts "Ruby"
}

#Lặp từ a đến b với a,b xác định và a > b
puts "======= TEST DOWNTO ======="
4.downto(2){
	puts "Ruby"
}

#Lặp từ a đến b
puts "======= TEST EACH ======="
(1..5).each{
	puts "Ruby"
}

# Tiếp theo đó là ta có thể sử dụng giá trị của phần tử trong vòng lặp bằng cách
# truyền vào 1 biến đặt trong || , thì nó sẽ đại diện cho các phần tử trong vòng
# lặp. Cách này có thể sử dụng cho cả times, upto,downto,each
(2..8).each{
	|i|
	puts "Ruby #{i}"
}


# Vòng lặp vô tận loop , ta chỉ có thể dừng nó lại nếu có điều kiện ngừng vòng
# lặp và break nó
puts "======= TEST LOOP ======="
loop do
	puts "Nhap vao mat khau :"
	matkhau = gets.chomp
	if matkhau == "vienbk91"
		break
	end
end