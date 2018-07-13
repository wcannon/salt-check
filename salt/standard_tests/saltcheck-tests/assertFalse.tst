# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


af-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - False
  kwargs:
  assertion: assertFalse
  expected-return: False

af-2:
  module_and_function: saltcheck_returns.get_bool
  args:
    - False
  kwargs:
  assertion: assertFalse
  expected-return: False

af-3:
  module_and_function: saltcheck_returns.get_bool
  args:
    - False
  kwargs:
  assertion: assertFalse
