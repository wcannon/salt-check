# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


at-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - True
  kwargs:
  assertion: assertTrue
  expected-return: True

at-2:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertTrue
  expected-return: True

at-3:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertTrue
