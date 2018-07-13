# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


ai-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - abcdefgh
  kwargs:
  assertion: assertIn
  expected-return: a

ai-2:
  module_and_function: saltcheck_returns.get_list
  args:
    - '[1, 2, 3, 4, 5]' 
  kwargs:
  assertion: assertIn
  expected-return: '3'

# python 'in' operator checks for key in dictionary
ai-3:
  module_and_function: saltcheck_returns.get_dict
  args:
    - {"one": 1, "two": 2}
  kwargs:
  assertion:  assertIn
  expected-return: 'one'
