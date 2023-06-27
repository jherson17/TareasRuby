#Create a Student class with the following components:
#• Instance attributes: full name, address, phone, age
#• A class attribute with the name of the university
#• The initialize method
#• Only reader accessors for all the attributes
#• A method that returns true if the student is underage
#• A method that returns true if the student’s age is more than 27
class Student
#attr_writer se usa para configurar la variable de instancia
#attr_reader se usa para obtener la variable de instancia.
#attr_accessor se utilizan para obtener y establecer valores de variables de instancia.
 attr_accessor :fullName, :address, :phone, :age
 @@university = "ITM"
  def initialize(fullName, address, phone, age)
    @fullName = fullName
    @address = address
    @phone = phone
    @age = age
  end
  def underage
    if @age < 18
      return "es menor de 18? #{true}"
    end
  end
  def old_mayor
    if @age > 27
      return "es mayor de 27 #{true}"
    end
  end
end
estudiante1 = Student.new("Jherson David", "itaca", "3053956370", 19)
puts estudiante1
estudiante1 = "Name: #{estudiante1.fullName} number: #{estudiante1.phone}"
puts estudiante1
