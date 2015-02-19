s,u,c = input(),input(),0
for i in range(len(s)-len(u)+1):
  c += 1 if s[i:i+len(u)] == u else 0
print(c)
