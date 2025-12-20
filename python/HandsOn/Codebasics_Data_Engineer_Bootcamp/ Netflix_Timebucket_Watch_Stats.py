# Data Available in this Dataframe:
df = data.copy()

# Write your solution code here
df['date'] = df['ts'].apply(lambda x:x.split(' ')[0])
df['hour'] = df['ts'].apply(lambda x:int(x.split(' ')[1].split(':')[0]))

df1 = df[df['date']=='10/21/2025'][['hour','seconds']]

df1 = df1.groupby('hour')['seconds'].sum().reset_index()

df1 = df1.sort_values(by = ['seconds'], ascending = [False])[:5]

df1.sort_values(by = ['hour'], ascending = [True], inplace = True)

# return the Dataframe
result =df1

