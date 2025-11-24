''' revenues = [2300, 1800, 2100, 2500, 1950, 2750]
print(revenues[1:4])

#slicing list
q2_revenues = print(revenues[3:])

#adding new values to list
revenues[2:4] = [9999, 9999]
print(revenues)

expenses = [106, 400, 333, 150, 240, 370]

for expense in expenses:
    print(f'Expense after tax: ${expense * 1.08:.2f}')

for i in range(len(expenses)):
    print(f'Expense number {i}: original expense {expenses[i]}')

for i in range(len(expenses)):
    if i % 3 == 0:
        expenses[i] += 1000 #pad expenses by 1000
print(f'Updated expenses: {expenses}') '''


'''employee = {
    'id': 'E102',
    'name': 'Alex Chen',
    'role': 'Data Analyst',
    'salary': 72000
}
print(employee)

print(employee['name'])
print(employee['role'])

employee['department'] = 'Research'
employee['salary'] = 82000
print(employee)

del employee['department']

for key in employee:
    print(key, "-->", employee[key])

for key, value in employee.items():
    print(key, '-->', value)'''

employees = {
    'E102': {
        'name': 'Alex Chen',
        'role': 'Data Analyst',
        'salary': 82000,
        'department': 'research'
    },
    'E103': {
       'name': 'Jordan Smith',
        'role': 'Data Engineer',
        'salary': 88000,
        'department': 'infrastructure'  
    }
}

print(employees['E102']['salary'])

employees['E102']['salary'] = 100000
print(employees['E102'])

employees['E103']['location'] = 'remote'
print(employees)