#-*- coding:utf-8 -*-

m = input()
if m == 1:
	print "nao"	
m += 1

def primo (n):
	l = filter(lambda n: len(filter(lambda x: n%x==0, range(2,n))) == 0,range(2,n))
	n -= 1
	if n == l[-1]:
		print "sim"
	else: 
		print "nao"
		
primo(m)