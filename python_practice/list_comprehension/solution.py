x,y,z,n,f = int(input()),int(input()),int(input()),int(input()),[]
for i in range(0,x+1):
    for j in range(0,y+1):
        for k in range(0,z+1):
            if i + j + k != n:
                f.append([i,j,k])
print(f)
