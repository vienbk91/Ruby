a = 0.9
b = 0.8
puts "Ket qua la #{a-b}"


require "bigdecimal"
x = BigDecimal.new("0.9")
y = BigDecimal.new("0.8")
puts x - y

n = Math.log(1)
puts n
m = Math.log10(1)
puts m
k = Math.log2(4)
puts k 


#Một số bài tập về số và các phép toán

#Bài 1: Tính diện tích
puts "========Chuong trinh tinh chu vi va dien tich hinh chu nhat========="
puts "Moi ban nhap vao chieu dai:"
chieudai = gets.chomp
puts "Moi ban nhap vao chieu rong:"
chieurong = gets.chomp
puts "========KET QUA========"
puts "Tom tat: chieu dai = #{chieudai} va chieu rong = #{chieurong}"
chieudai = chieudai.to_i
chieurong = chieurong.to_i
chuvi = (chieudai + chieurong) * 2
puts "Chu vi la #{chuvi}"
dientich = chieudai * chieurong
puts "Dien tich la #{dientich}"

if chieudai == chieurong
	puts "DAY LA HINH VUONG"
end


# Bài 2: Bài tập tính điểm trung bình

puts "===== Chuong trinh tinh diem trung binh ====="
puts "Moi ban nhap vao diem mon Toan"
toan = gets.chomp
puts "Moi ban nhap vao diem mon Vatly"
vatly = gets.chomp
puts "Moi ban nhap vao diem mon Hoa"
hoahoc = gets.chomp
puts "========== KET QUA ==========="
toan = toan.to_i
vatly = vatly.to_i
hoahoc = hoahoc.to_i
puts "Tom tat : Toan (#{toan}) Vat ly(#{vatly}) Hoa hoc(#{hoahoc})"
trungbinh = ((toan.to_f + vatly.to_f + hoahoc.to_f)/3).round(1)
puts "Ket qua diem trung binh: #{trungbinh}"


# Bài 3: Tính chỉ số BMI
puts "===== Chuong trinh tinh chi so BMI ===="
puts "Moi ban nhap vao chieu cao(m)"
chieucao = gets.chomp
puts "Moi ban nhap vao can nang(kg)"
cannang = gets.chomp
puts "========== KET QUA ========="
chieucao = chieucao.to_f
cannang = cannang.to_f
puts "Tom tat: chieu cao: #{chieucao}m va can nang #{cannang}kg "
bmi = cannang / (chieucao**2)
bmi = bmi.round(1)
puts "Chi so BMI la : #{bmi}"

if 0 < bmi && bmi < 18.5
	puts "Ban dang o duoi chuan"
elsif 18.5 <= bmi && bmi < 25
	puts "BMI cua ban la chuan"
elsif 25 <= bmi && bmi< 30
	puts "Ban bi thua can roi"
elsif 30 <= bmi  && bmi < 40
	puts "Ban bi beo - nen giam can"
else
	puts "Ban bi beo phi - giam can ngay"
end
		
		
		