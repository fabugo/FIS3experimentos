#!/usr/bin/env python
#Modulos python
import numpy as np
import scipy.optimize
import matplotlib as mpl
import matplotlib.pyplot as plt
#*******************************************
#le os dados e armazena em 2 vetores: x, y.
x1, y1 = np.loadtxt('dados01.dat', unpack=True)
#calcula os coeficientes do polinomio
coef = np.polyfit(x1, y1, 2)
#cria o polinomio
pol = np.poly1d(coef)
#calcula os novos y com o juste
yajus = pol(x1)
#plotando os dados
plt.plot(x1, yajus, '-',color = "r",marker=".")
#*******************************************
#le os dados e armazena em 2 vetores: x, y.
x2, y2 = np.loadtxt('dados02.dat', unpack=True)
#calcula os coeficientes do polinomio
coef = np.polyfit(x2, y2, 2)
#cria o polinomio
pol = np.poly1d(coef)
#calcula os novos y com o juste
yajus = pol(x2)
#plotando os dados
plt.plot(x2, yajus, '-',color = "r",marker=".")
#*******************************************
#le os dados e armazena em 2 vetores: x, y.
x3, y3 = np.loadtxt('dados03.dat', unpack=True)
#calcula os coeficientes do polinomio
coef = np.polyfit(x3, y3, 2)
#cria o polinomio
pol = np.poly1d(coef)
#calcula os novos y com o juste
yajus = pol(x3)
#plotando os dados
plt.plot(x3, yajus, '-',color = "r",marker=".")
#*******************************************
#le os dados e armazena em 2 vetores: x, y.
x4, y4 = np.loadtxt('dados04.dat', unpack=True)
#calcula os coeficientes do polinomio
coef = np.polyfit(x4, y4, 2)
#cria o polinomio
pol = np.poly1d(coef)
#calcula os novos y com o juste
yajus = pol(x4)
#plotando os dados
plt.plot(x4, yajus, '-',color = "r",marker=".")
#*******************************************
#le os dados e armazena em 2 vetores: x, y.
x5, y5 = np.loadtxt('dados05.dat', unpack=True)
#calcula os coeficientes do polinomio
coef = np.polyfit(x5, y5, 2)
#cria o polinomio
pol = np.poly1d(coef)
#calcula os novos y com o juste
yajus = pol(x5)
#plotando os dados
plt.plot(x5, yajus, '-',color = "r",marker=".")
#*******************************************
#le os dados e armazena em 2 vetores: x, y.
x6, y6 = np.loadtxt('dados06.dat', unpack=True)
#calcula os coeficientes do polinomio
coef = np.polyfit(x6, y6, 2)
#cria o polinomio
pol = np.poly1d(coef)
#calcula os novos y com o juste
yajus = pol(x6)
#plotando os dados
plt.plot(x6, yajus, '-',color = "r",marker=".")
plt.show()
