count,dict = int(input()),{}
for i in range(0,count):
  a = input().split()
  name = a.pop(0)
  #Popping of a will leave us with only the student's grades
  dict[name] = sum(map(float,a)) / len(a)
#Make sure to format the float to 2 decimal places
print('%.2f' % dict[input()])
