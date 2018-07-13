# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


ag-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertGreater
  expected-return: 20

ag-2:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertGreater
  expected-return: "happy days"

ag-3:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertGreater
  expected-return: 0

ag-4:
  module_and_function: saltcheck_returns.get_int
  args:
    - 100
  kwargs:
  assertion: assertGreater
  expected-return: 101

ag-5:
  module_and_function: saltcheck_returns.get_int
  args:
    - "25"
  kwargs:
  assertion: assertGreater
  expected-return: 26

ag-6:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertGreater
  expected-return: 2.67

ag-7:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.5'
  kwargs:
  assertion: assertGreater
  expected-return: '3.6'

ag-8:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertGreater
  expected-return: ['one', 'two', 'three', 'four']

ag-9:
  module_and_function: saltcheck_returns.get_bool
  args:
    - False
  kwargs:
  assertion: assertGreater
  expected-return: True
