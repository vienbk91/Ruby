#############################################################
## Example 1
#############################################################
puts "=================Ex1==============="
# Xây dựng lớp Hello
class Hello
	def xinchao
		chao = "HelloWorld ! I'm Vien "
		puts chao
	end
end

# Xây dựng lớp Goodbye kế thừa từ lớp Hello
class Goodbye < Hello

	def tambiet
		chao = "Goodbye! I'm Vien"
		puts chao
	end
end

# Khai báo 1 đối tượng của lớp Goodbye
# Nếu nó là đối tượng của lớp Hello thì nó sẽ ko sử dụng được phương thức tambiet của lớp Goodbye
friendly = Goodbye.new
friendly.xinchao
friendly.tambiet

#############################################################
## Example 2
#############################################################
puts "=================Ex2==============="
class Dog
	def set_name(name)
		@name = name
	end


	def get_name
		return @name
	end

	def talk
		return "#{@name} talk Wow"
	end

end

mydog = Dog.new
mydog.set_name("Cafe")
puts mydog.get_name
puts mydog.talk

#############################################################
## Example 3
#############################################################
puts "=================Ex3==============="

class Thing
	def set_name(aName)
		@name = aName
	end

	def get_name
		return @name
	end
end

class Treasure
	def initialize(aName= "Vien" , aDescription="Student")
		@name = aName
		@description = aDescription
	end

	def to_s #override default to_s method
		"The #{@name} Treasure is #{@description} \n"
	end
end

thing1 = Thing.new
thing1.set_name("A lovely Thing")
puts thing1.get_name

t1 = Treasure.new("Vien" , "an Suzuki weapon forged of gold")
t2 = Treasure.new("Suzuki" , "a magic ring of great power")

puts t1.to_s
puts t2.to_s

puts "Inspecting 1st treasure : #{t1.inspect}"



#############################################################
## Example 4
#############################################################
puts "=================Ex4==============="

class Nguoi
	
	attr_accessor :ten , :tuoi , :sothich , :nangluong

	# 


	def initialize(ten = nil , tuoi = nil , sothich = nil)
		@ten = ten unless ten.nil?
		@tuoi = tuoi unless tuoi.nil?
		@sothich = sothich unless sothich.nil?

		@nangluong = 100
	end

	def lam_viec
		puts "#{@ten} lam viec tu 10h sang den 20h dem! Vat va thiet do"
		@nangluong -= 10
	end

	def an(ban = nil)
		puts "#{@ten} di an cung #{ban}" unless ban.nil?
		@nangluong += 10
	end

end 

vien = Nguoi.new("Vien Chu" ,23 , "Doc sach")
puts vien.nangluong #=> 100
vien.an #=> 110
vien.lam_viec #=> 100
vien.an("Long") #=> 110
puts vien.nangluong #=>110


long = Nguoi.new("Long")
long.lam_viec