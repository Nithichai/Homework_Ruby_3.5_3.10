class A < BasicObject ; end
class B < A ; end

def checkSuperClass(obj)
  print(obj, ">> \n")
  print("Ancestors : ", obj.class.ancestors, "\n")
  obj.superclass == BasicObject ? nil : obj.superclass
end

p checkSuperClass(A)
p checkSuperClass(B)
