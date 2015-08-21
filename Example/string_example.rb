#########################################################
## Các ví dụ về 1 số method hay trong String 
#########################################################


# Hàm làm thay đổi chuỗi

# strip: Xóa các khoảng trống ở 2 đầu của chuỗi
a = "  Ruby \n\t"
a = a.strip! # Xóa khoảng trống ở 2 đầu
puts a


# squeeze : Xóa các ký tự trùng nhau trong chuỗi
b = "RuuuuuuuuuuuBBBBByyyyyyyyyy"
b = b.squeeze
puts b

# Xóa các ký tự trùng nhau nhất định trong chuỗi
# Chỉ loại bỏ những phần tử giống nhau trong chuỗi được khai báo
c = "Ruuuuuuubbbbbyyyyyyyyyyy".squeeze("ub")
puts c #=> Rubyyyyyyyyyyy


# sub: Thay thế đoạn ký tự con phù hợp với mẫu cho trước
d = "Toi la Chu Quang Vien. Hien tai toi dang làm game engineer cho BOI"
d = d.sub("Chu Quang Vien" , "Bank Of Inovation")
puts d

# gsub: Thay thế tất cả các đoạn ký tự con phù hợp với mẫu cho trước
e = "Ruby is practical programming language!"
e = e.gsub(/p.*?\s/){|sub| sub.upcase}
# Giải thích lệnh trên gusb(pattern){|match| block}
# pattern: Phần tử cần thay thế , và xử lý thay thế sẽ nằm trong block
# / Đoạn mã cần thay thế sẽ nằm trong đây /
# p. : Bắt đầu từ p
# *?\s : Kết thúc khi gặp khoảng trắng
# Những phần tử thỏa mãn đk trên thì sẽ được gán vào sub, và sẽ thực hiện in hoa
puts e 



#split: Cắt chuỗi thành các chuỗi con
str = "Toi, la, Chu, Quang, Vien"
puts str.split(" , ") # Cắt string thành 1 mảng theo " , "
puts str.split(/,\s/) # \s: đại diện cho khoảng trắng
puts str.split(/,\s/ , 2) # Nếu có tham số thứ 2 thì nghĩa là số chuỗi con sẽ ko được vượt quá tham số đó

# slice: Lấy 1 chuỗi con
# Chỉ định vị trí bắt đầu và kết thúc
puts "Ruby is a beautiful language".slice(0..3)
e = "Ruby is a beautiful language"
e = %w"Ruby is a beautiful language" #=> 
puts "Ruby is a beautiful language".slice(/[0-9]+/) #=> Không thấy gì vì ko có dữ liệu thỏa mãn


p = "Ruby is a object oriented program language"
p = p.split(" ").each{ |str| str << "#{str}! "}
puts p
