#-*- coding: UTF-8-*-

dados = raw_input().split(' ')	
dados = map(int, dados)

def bubbleSort(lista, ini, fim):
	if ini > fim :
		return lista
	if ini == fim-1:
		bubbleSort(lista,0,fim-1)
	elif lista[ini] > lista[ini+1]:
		aux = lista[ini]
		lista[ini] = lista[ini+1]
		lista[ini+1] = aux
		bubbleSort(lista,ini + 1,fim)
	else:
		bubbleSort(lista, ini + 1, fim)
	return lista

def mostrar(l, s = ""):
    if l != []:
        return s + str(l[0]) + mostrar(l[1:], ',')
    else:
        return ""

vetor = bubbleSort(dados,dados[0],len(dados))
stri = ""
r = mostrar(vetor, stri)
print r