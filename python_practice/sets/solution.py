input()
a = set(map(int,input().split()))
input()
b = set(map(int,input().split()))
for x in sorted(a.difference(b).union(b.difference(a))):
  print(x)
