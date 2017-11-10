#-*- coding: UTF-8-*- 
dados = raw_input().split(' ')	
vetor = map(int, dados)
resul = filter(lambda x : x % 2 == 0 , vetor)

def mostrar(l, s = ""):
    if l != []:
        return s + str(l[0]) + mostrar(l[1:], ',')
    else:
        return ""

stri = ""
r = mostrar(resul, stri)
print r