import string
# Data Available in this DataFrame:
df = data.copy()
## 
# Each row has two sentences: sentence_1 and sentence_2
# Write your solution code here

def find_common_words(row):
    s1 = row['sentence_1']
    s2 = row['sentence_2']
    # Your logic here
    s1 = s1.translate(str.maketrans('', '', string.punctuation))
    
    s2 = s2.translate(str.maketrans('', '', string.punctuation))
    
    list1 = s1.split(' ')
    list2 = s2.split(' ')
    
    dict1 = {}
    
    for i in list2:
        if i in list1:
            dict1[i] = list2.count(i)
    
    return dict1
   
df['output'] = df.apply(find_common_words, axis=1)

# return the DataFrame
df

