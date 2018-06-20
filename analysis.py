
# coding: utf-8

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt


# In[11]:


df = pd.read_csv("informatica.csv", sep=',', encoding='utf-8')
df.head(10)


# In[ ]:


# data = {'apples': 10, 'oranges': 15, 'lemons': 5, 'limes': 20}
# names = list(data.keys())
# values = list(data.values())

# fig, axs = plt.subplots(1, 3, figsize=(9, 3), sharey=True)
# axs[0].bar(names, values)
# axs[1].scatter(names, values)
# axs[2].plot(names, values)
# fig.suptitle('Categorical Plotting')

# fig, axs = plt.subplots(52, 52, figsize=(20,30), sharey=True)
# axs[0].bar(df['Institutos'], df[df['MRI'] > 100000]['MRI'])
# fig.suptitle('Manutenção com informática')
# df[df['MRI'] > 100000]['MRI'].plot.bar()


# In[37]:


fig, ax = plt.subplots(figsize=(10,6))
ax.bar(top_ten['Institutos'], top_ten['MRI'])
fig.suptitle('Gastos em manutenção e reposição de equipamentos, por instituto')
# plt.figure(figsize=(40,40))


# In[52]:


df_2 = pd.read_csv("lab_clean.csv", sep=';')
df_2.head(10)


# In[58]:


chopped_t = df_2.head(10)

sizes = chopped_t['Gasto']
labels = chopped_t['Unidade']
plt.pie(sizes, labels=labels, startangle=170)

