#-*- coding: UTF-8-*-
l1 = raw_input().split(' ')
l1 = map(int, l1)
l2 = raw_input().split(' ')
l2 = map(int, l2)

l1 += l2[0:] 

def mostrar(l, s = ""):
    if l != []:
        return s + str(l[0]) + mostrar(l[1:], ',')
    else:
        return ""

stri = ""
r = mostrar(l1, stri)
print r
#print filter(lambda x : x not in l2 , l1)

