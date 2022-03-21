#https://www.codewars.com/kata/561e9c843a2ef5a40c0000a4
def gap(g, m, n):
    s = 0
    e = 0
    for i in range(m,n+1):
      if checkPrime(i):
        if s == 0:
          s = i
        elif e == 0:
          e = i
        else:
          s = e
          e = i
      if e - s == g:
        return [s, e]
    return None




def checkPrime(k):
  if k <= 0 or k == 1:
    return False
  i = 2
  while (i <= k ** 0.5 ):
    if k % i == 0:
      return False
    i += 1
  return True