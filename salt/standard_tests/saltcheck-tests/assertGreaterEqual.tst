# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


age-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 20

age-1a:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 0

age-2:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertGreaterEqual
  expected-return: "happy days"

age-2a:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertGreaterEqual
  expected-return: "happy day"

age-3:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 0

age-3a:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertGreaterEqual
  expected-return: -1

age-4:
  module_and_function: saltcheck_returns.get_int
  args:
    - 100
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 101

age-5:
  module_and_function: saltcheck_returns.get_int
  args:
    - "25"
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 26

age-6:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 2.67

age-6a:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertGreaterEqual
  expected-return: 2.66

age-7:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.5'
  kwargs:
  assertion: assertGreaterEqual
  expected-return: '3.6'

age-8:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertGreaterEqual
  expected-return: ['one', 'two', 'three', 'four']

age-8a:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertGreaterEqual
  expected-return: ['one', 'two', 'three']

age-9:
  module_and_function: saltcheck_returns.get_bool
  args:
    - False
  kwargs:
  assertion: assertGreaterEqual
  expected-return: True
