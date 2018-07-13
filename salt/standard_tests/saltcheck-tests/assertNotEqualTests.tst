# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


ane-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertNotEqual
  expected-return: 1

ane-2:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertNotEqual
  expected-return: "not happy day"

ane-3:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertNotEqual
  expected-return: 0

ane-4:
  module_and_function: saltcheck_returns.get_int
  args:
    - 100
  kwargs:
  assertion: assertNotEqual
  expected-return: 101

ane-5:
  module_and_function: saltcheck_returns.get_int
  args:
    - "25"
  kwargs:
  assertion: assertNotEqual
  expected-return: 26

ane-6:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertNotEqual
  expected-return: 2.67

ane-7:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.5'
  kwargs:
  assertion: assertNotEqual
  expected-return: '3.6'

ane-8:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three", "four"]
  kwargs:
  assertion: assertNotEqual
  expected-return: ['one', 'two', 'three']

ane-9:
  module_and_function: saltcheck_returns.get_list
  args:
    - ['item1']
  kwargs:
  assertion: assertNotEqual
  expected-return: []

ane-10:
  module_and_function: saltcheck_returns.get_dict
  args:
    - '{"one":1, "two":2, "three":3, "four":4}'
  kwargs:
  assertion: assertNotEqual
  expected-return: '{"one":1, "two":2, "three":3}'

ane-11:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertNotEqual
  expected-return: False

ane-12:
  module_and_function: saltcheck_returns.get_bool
  args:
    - False
  kwargs:
  assertion: assertNotEqual
  expected-return: True

