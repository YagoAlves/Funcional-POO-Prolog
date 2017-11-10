#-*- coding: UTF-8-*-
dados = raw_input().split(' ')	
dados = map(int, dados)

print (reduce(lambda x, y : x * y, dados))