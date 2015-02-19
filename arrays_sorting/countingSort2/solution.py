count = int(input())
test = {}
for x in map(int, input().split()):
    if x in test:
        test[x]+=1
    else:
        test[x] = 1
test2 = []
for x in range(0,100):
   if x in test:
        count = test[x]
        for i in range(0,count):
            test2.append(x)
print(" ".join(str(x) for x in test2))
