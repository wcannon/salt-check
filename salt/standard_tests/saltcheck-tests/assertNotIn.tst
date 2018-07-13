# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


ani-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - abcdefgh
  kwargs:
  assertion: assertNotIn
  expected-return: z

ani-2:
  module_and_function: saltcheck_returns.get_list
  args:
    - '[1, 2, 3, 4, 5]' 
  kwargs:
  assertion: assertNotIn
  expected-return: '6'

# python 'in' operator checks for key in dictionary
ani-3:
  module_and_function: saltcheck_returns.get_dict
  args:
    - {"one": 1, "two": 2}
  kwargs:
  assertion:  assertNotIn
  expected-return: 'three'
