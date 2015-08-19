#Trong bài học này thì mình sẽ làm quen với hash trong Ruby
#Hash cũng tương tự như mảng nhưng thay vì sử dụng index như mảng thì trong Hash mình sử dụng key


require "awesome_print"


h = {"name" => "Vien Chu" , "email" => "vienbk91@boi.jp" , "wwebsite" => "ChickenRain.com"}
ap h


puts "======= TEST FIND ======"
a= h.find {
	|key,value|
	key == "name"
}

ap a

b = h.find_all{
	|key,value|
	key.size < 5
}

ap b


puts "======= TEST MAP ======="
c = h.map {
	|key,value|
	key = "cr#{key}"
	#value = "#{value}!!"
}

ap c



