#!/usr/bin/env python
#Modulos python
import sys
import numpy as np
import scipy.optimize
import matplotlib as mpl
import matplotlib.pyplot as plt

def make(x,y):
	#calcula os coeficientes do polinomio
	#coef = np.polyfit(x, y, 2)
	#cria o polinomio
	#pol = np.poly1d(coef)
	#calcula os novos y com o juste
	#yajus = pol(x)
	plt.plot(x, y, '-',color = "b", marker = '.')

def readMake(arquivo):
	x,y = np.loadtxt(arquivo, unpack=True)
	make(x,y)

if __name__ == '__main__':
	if(len(sys.argv) != 2):
		print "Use: python exp7.py path"
		sys.exit()
	path = sys.argv[1]+"/dados"
	for i in range(6):
		readMake(path + str(i) +".dat")
	plt.show()
