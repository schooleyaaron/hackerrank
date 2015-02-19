import re
def validatePhone(phone):
  m = re.match('^[7-9]\d\d\d\d\d\d\d\d\d$',phone)
  if m:
    return True
  else:
    return False

for i in range(int(input())):
  print('YES' if validatePhone(input()) else 'NO')
