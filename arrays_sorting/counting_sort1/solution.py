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
        test2.append(test[x])
   else:
        test2.append(0)
print(" ".join(str(x) for x in test2))
