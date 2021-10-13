# -*- coding: utf-8 -*-
"""
Created on Sat Oct 10 19:14:34 2020

@author: zhong
"""

###############################################################################
'to plot within notebook'
import matplotlib.pyplot as plt
import numpy as np
from tabulate import tabulate

plot = []
mean = []
std = []
size_1_mean = []
size_2_mean = [] 
size_30_mean = []
# a for loop, repeat 500 times
for i in range(50000):
    # generate exponential distribution
    size_1 = np.random.exponential(scale = 1,size = 1) 
    size_2 = np.random.exponential(scale = 1,size = 2)
    size_30 = np.random.exponential(scale = 1,size = 30)
    
    # take the average of them
    size_1_mean.append(np.mean(size_1))
    size_2_mean.append(np.mean(size_2))
    size_30_mean.append(np.mean(size_30))

plot.append([size_1_mean,size_2_mean,size_30_mean])
mean.append([np.mean(size_1_mean),np.mean(size_2_mean),np.mean(size_30_mean)])
std.append([np.std(size_1_mean),np.std(size_2_mean),np.std(size_30_mean)])

size_1_mean = []
size_2_mean = [] 
size_30_mean = []
for i in range(50000):
    # generate exponential distribution
    size_1 = np.random.uniform(low = 0 ,high = 1,size = 1) 
    size_2 = np.random.uniform(low = 0 ,high = 1,size = 2)
    size_30 = np.random.uniform(low = 0 ,high = 1,size = 30)
    
    # take the average of them
    size_1_mean.append(np.mean(size_1))
    size_2_mean.append(np.mean(size_2))
    size_30_mean.append(np.mean(size_30))

plot.append([size_1_mean,size_2_mean,size_30_mean])
mean.append([np.mean(size_1_mean),np.mean(size_2_mean),np.mean(size_30_mean)])
std.append([np.std(size_1_mean),np.std(size_2_mean),np.std(size_30_mean)])

size_1_mean = []
size_2_mean = [] 
size_30_mean = []
for i in range(50000):
    # generate exponential distribution
    size_1 = np.random.normal(loc=0,scale = 1,size = 1) 
    size_2 = np.random.normal(loc=0,scale = 1,size = 2)
    size_30 = np.random.normal(loc=0,scale = 1,size = 30)
    
    # take the average of them
    size_1_mean.append(np.mean(size_1))
    size_2_mean.append(np.mean(size_2))
    size_30_mean.append(np.mean(size_30))

plot.append([size_1_mean,size_2_mean,size_30_mean])
mean.append([np.mean(size_1_mean),np.mean(size_2_mean),np.mean(size_30_mean)])
std.append([np.std(size_1_mean),np.std(size_2_mean),np.std(size_30_mean)])

fig, ax = plt.subplots(nrows=3, ncols=3,figsize=(25,25))
for row in range(3):
    for col in range(3):
        ax[row,col].hist(plot[row][col],bins = 30)

teams_list = ['size of 1',"size of 2","size of 30"]

print(tabulate([['Exponential', round(mean[0][0],4),round(mean[0][1],4),round(mean[0][2],4)], 
                ['Uniform', round(mean[1][0],4),round(mean[1][1],4),round(mean[1][2],4)], 
                ['Normal', round(mean[2][0],4),round(mean[2][1],4),round(mean[2][2],4)]], 
    headers=['Mean Distribution','size of 1',"size of 2","size of 30"]))
print("")
print(tabulate([['Exponential', round(std[0][0],4),round(std[0][1],4),round(std[0][2],4)], 
                ['Uniform', round(std[1][0],4),round(std[1][1],4),round(std[1][2],4)], 
                ['Normal', round(std[2][0],4),round(std[2][1],4),round(std[2][2],4)]], 
    headers=['Std Distribution','size of 1',"size of 2","size of 30"]))
