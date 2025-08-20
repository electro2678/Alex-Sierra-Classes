#!/usr/bin/env python
# coding: utf-8

# In[74]:


# Import os and socket modules
import os
import socket

#  source code to change your directory to the directory that you created

os.chdir("C:/Users/electro/Arnold_Week_15_Assignment")
os.getcwd()

# source code using a while loop to read each line in the file, domains.txt

with open("domains.txt", "r") as f:
    while True:
        line = f.readline().strip()
        if not line:
            break
        print(f"Domain = {line} > IP Address = {socket.gethostbyname(line)}") #for each line print the line and obtained the IP Address


        


# In[ ]:





# In[ ]:





# In[ ]:




