#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import random as rand
from matplotlib import pyplot as plt
rand.seed(1947)

colors=(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)
df=pd.read_fwf('NMOS_R_on_calc_POSTLAYOUT.txt')
df.to_csv('NMOS_R_on_calc_POSTLAYOUT.csv', index=False)
data = pd.read_csv('NMOS_R_on_calc_POSTLAYOUT.csv').values


df2=pd.read_fwf('NMOS_R_on_calc_POSTLAYOUT_2x2.txt')
df2.to_csv('NMOS_R_on_calc_POSTLAYOUT_2x2.csv', index=False)
data2 = pd.read_csv('NMOS_R_on_calc_POSTLAYOUT_2x2.csv').values

## If you want to change the start, stop and step in the .sch file, you may change this parametres
## here, named start, stop and step.

VGS=[5]


## If you want to change the current sweep step  in the for more data, you may change this parametre
## here, named current_sweep_step.
current_sweep_step=10000
under=0
top=current_sweep_step-1   


row1=0
row2=0
i=0

flag=True
for volt in VGS:
    
    row1=under
    row2=top
    if flag:
        under+=current_sweep_step
        flag=False
    else:
        under+=current_sweep_step+1
    top+=current_sweep_step+1
    if volt==VGS[0]:
        voltage = data[0:row2,0]
        current = data[0:row2,1]
        voltage2 = data2[0:row2,0]
        current2 = data2[0:row2,1]
    else:
        voltage = data[row1:row2,0]
        current = data[row1:row2,1]
        voltage2 = data2[row1:row2,0]
        current2 = data2[row1:row2,1]
    slope,_=np.polyfit(current,voltage,1)
    print('R_ON:',-slope,'ohms')
    if volt==VGS[-1]:
        plt.plot(voltage,-current, color=(rand.choice(colors),rand.choice(colors),rand.choice(colors)),label='36x36')
        plt.plot(voltage2,-current2, color=(rand.choice(colors),rand.choice(colors),rand.choice(colors)),label='2x2')

    
plt.xlabel('Current (A)')
plt.ylabel('VDS (V)')
plt.title('Ron characteristic for various VGS')
plt.legend()
plt.show()
    
