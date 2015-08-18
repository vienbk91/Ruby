a = Array.new

a.push("Toi")
a.push("Programmer")

a << ["fuck"]

danhsach = [5,10,200,20 ,"ruby",21]

# Duyệt mảng
danhsach.each do |ds|
	puts "Gia tri tai phan tu nay la #{ds}"
end

#Thay do end thành dấu ngoặc {}
danhsach.each {
	|ds|
	puts "Gia tri tai phan tu la #{ds}"
}

if danhsach.all?{|ds| ds > 5} == true
	puts "true"
else
	puts "false"
end


array = [5,12,32,45,62,1,3]
mang = array.select {|ds| ds > 15}
mang.each {
	|mang|
	puts "Gia tri #{mang}"
}

