#-*- coding: UTF-8-*-
s = raw_input() #= ["matam"]

def palindroma (string) :
	
	if string[::-1] == string:	
		return "sim"
	return "nao"

print palindroma(s)