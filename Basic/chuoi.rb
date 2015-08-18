#Bài 1: Nhập và check tên, địa chỉ email

puts "Hay nhap ten cua ban :"
ten = gets.chomp
puts "Hay nhap email cua ban: "
email = gets.chomp

ten = ten.downcase
mangten = ten.split("")
ten = ten.sub(mangten[0] , mangten[0].upcase)


if (ten.empty? == true)
	puts "\nBan chua nhap ten"
else
	puts "\nXin chao \"#{ten}\" "
end

if (email.empty? == true || email.include?("@") == false)
	puts "Dia chi Email chua hop le"
else
	puts "Dia chi Email cua ban la \"#{email}\"."
end

