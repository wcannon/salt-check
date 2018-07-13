# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


al-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertLess
  expected-return: -1

al-2:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertLess
  expected-return: "happy da"

al-3:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertLess
  expected-return: -2

al-4:
  module_and_function: saltcheck_returns.get_int
  args:
    - 100
  kwargs:
  assertion: assertLess
  expected-return: 99

al-5:
  module_and_function: saltcheck_returns.get_int
  args:
    - "25"
  kwargs:
  assertion: assertLess
  expected-return: 24

al-6:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertLess
  expected-return: 2.5

al-7:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.5'
  kwargs:
  assertion: assertLess
  expected-return: '3.49'

al-8:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertLess
  expected-return: ['one', 'two']

al-9:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertLess
  expected-return: False
