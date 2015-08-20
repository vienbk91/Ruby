# Trong phần này sẽ luyện tập về cách Ruby làm việc với các tệp tin(file)
# Đọc nội dung file
# Xóa file
# Thay đổi nội dung file


#########################################################
## Đọc file
#########################################################

# Cú pháp đọc file: File.read "tên_file.txt"
puts File.read "test.txt"
# Kết quả thu được
#=> Xin chao, minh la Vien ,minh dang hoc Ruby de tro thanh Server Engineer

#########################################################
## Ghi file
#########################################################
# Ghi file bằng cú pháp
# File.write "new_file.txt" , "nội_dung_file"
File.write "vidu.txt" , "Day la file moi"
File.write "vidu1.txt" , "Day la file moi tao ra"

#########################################################
## Đổi tên file đã có
#########################################################
# Mình sẽ đổi tên vidu.txt thành vidu1.txt
# File.rename "tên_cũ.txt","tên_mới.txt"
File.rename "vidu1.txt" , "vidu2.txt"


#########################################################
## Xóa file đã có
#########################################################
#Cú pháp: File.delete "tên_file_muốn_xóa.txt"
File.delete "vidu2.txt"

#########################################################
## Gọi và in ra tên các phương thức có trong class File
#########################################################
puts File.methods


