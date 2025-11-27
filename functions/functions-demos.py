#def cents_to_dollars(amount):
    #return amount/100

#result = cents_to_dollars(2500)
#print('Result:', result)

 #print(cents_to_dollars(2500) * 1.07) #add tax

'''
def sum_and_average(a,b,c):
    total = a + b + c
    avg = total/3
    return avg

result = sum_and_average(2,4,6)
print(result)
'''

'''def calculate_tax(amount):
    return amount * 0.07

def total_with_tax(amount):
    tax = calculate_tax(amount)
    total = amount + tax
    return total

expense_1 = total_with_tax(100)
expense_2 = total_with_tax(50)
expense_3 = total_with_tax(10)

grand_total = expense_1 + expense_2 + expense_3
print(grand_total)'''

'''def clean_amount(value):
    #remove dollar signs and commas, convert to float
    #'$1,234'
    return float(value.replace('$','').replace(',',''))

def convert_to_usd(amount, conversion_rate):
    return amount * conversion_rate

def process_transaction(value,rate):
    #combine cleaning and conversion steps in one function
    clean_val = clean_amount(value)
    return convert_to_usd(clean_val, rate)

print(process_transaction('$1,200', 1.1))'''

'''
def standaridized_label(label):
    #make label lowercase and strip whitespace
    return label.strip().lower()

def is_priority_category(label):
    # check if cleaned label is in priority list
    clean = standaridized_label(label)
    return clean in ['urgent', 'high']

print(is_priority_category('  HIGH  '))
print(is_priority_category('regular'))
'''

'''
def revenue_stat(values):
    total = sum(values)
    avg = total / (len(values))
    return total, avg #returns as a tuple

total_revenue, avg_revenue = revenue_stat([1200, 900, 1100])
print(f'total revenue: {total_revenue} average revenue: {avg_revenue}')
'''

'''
def extract_domain(email):
    #splits string into 2 strings based on charatcer given in paranthesis
    return email.split('@')[1]

def is_internal_email(email):
    return extract_domain(email).lower() == 'mycompany.com'

print(is_internal_email('alex@mycompany.com'))
print(is_internal_email('person@gmail.com'))
'''

def classify_scores(score):
    if score is None:
        return 'missing score'
    if score >= 90:
        return 'excelllent'
    if score >= 75:
        return 'solid'
    return 'keep practicing'

print(classify_scores(92))
print(classify_scores(0))