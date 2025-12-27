# Data Available in this DataFrame:
df = data.copy()

def solve(df: pd.DataFrame) -> pd.DataFrame:
    # your code here
    df['reversed_sentence'] = df['sentence'].apply(lambda x: ' '.join([i[::-1] for i in x.split(' ') ]))

    return df
    

# return the DataFrame
df = solve(df)

# check 1
df['sentence'].value_counts()
