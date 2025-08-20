#!/usr/bin/env python
# coding: utf-8

# In[11]:


# Import os
import os

#source code to display the current directory.
os.getcwd()

# source code to create a directory
os.mkdir("Arnold_Week_15_Assignment")

# source code to change the current directory to the directory you just created
os.chdir("Arnold_Week_15_Assignment")

# source code to create a file named domains.txt 
f = open("domains.txt", "w")
f.write("google.com \nsierracollege.edu \nw3schools.com \nw3schools.com \nrealpython.com \nstackoverflow.com")
f.close()


# In[ ]:




