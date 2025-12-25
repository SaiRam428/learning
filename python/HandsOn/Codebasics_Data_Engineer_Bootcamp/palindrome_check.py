# Data Available in this DataFrame:
df = data.copy()

def palindrome(row):
    text = row['text'].replace(" ", "").lower()
    reverse = text[::-1]
    # start → empty, end → empty, step → -1 (move backward)
    # So Python: Starts at the last character, Moves backward one character at a time. Collects characters until it reaches the start
    if text == reverse:
        return True
    else:
        return False

# your code here
df['is_palindrome']  = df.apply(palindrome,axis=1)

# return the DataFrame
df

# check 1 (extra code for the above code)
df = df[df['is_palindrome'] == True]
df.reset_index(inplace=True,drop = True)
