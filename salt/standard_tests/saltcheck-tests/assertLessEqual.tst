# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


ale-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertLessEqual
  expected-return: -1

ale-1a:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertLessEqual
  expected-return: 0 

ale-2:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertLessEqual
  expected-return: "happy da"

ale-2a:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertLessEqual
  expected-return: "happy day"

ale-3:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertLessEqual
  expected-return: -2

ale-4:
  module_and_function: saltcheck_returns.get_int
  args:
    - 100
  kwargs:
  assertion: assertLessEqual
  expected-return: 99

ale-4a:
  module_and_function: saltcheck_returns.get_int
  args:
    - 99
  kwargs:
  assertion: assertLessEqual
  expected-return: 99

ale-5:
  module_and_function: saltcheck_returns.get_int
  args:
    - "25"
  kwargs:
  assertion: assertLessEqual
  expected-return: 24

ale-5a:
  module_and_function: saltcheck_returns.get_int
  args:
    - "24"
  kwargs:
  assertion: assertLessEqual
  expected-return: 24

ale-6:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertLessEqual
  expected-return: 2.5

ale-7:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.5'
  kwargs:
  assertion: assertLessEqual
  expected-return: '3.49'

ale-7a:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.49'
  kwargs:
  assertion: assertLessEqual
  expected-return: '3.49'

ale-8:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertLessEqual
  expected-return: ['one', 'two']

ale-8a:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertLessEqual
  expected-return: ['one', 'two', 'three']

ale-9:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertLessEqual
  expected-return: False

ale-9a:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertLessEqual
  expected-return: True
