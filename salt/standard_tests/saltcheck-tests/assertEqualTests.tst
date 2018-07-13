# using built-in functions of saltcheck_returns module for testing
# get_string
# get_int
# get_float
# get_list
# get_dict
# get_empty
# get_bool


ae-1:
  module_and_function: saltcheck_returns.get_string
  args:
    - 0
  kwargs:
  assertion: assertEqual
  expected-return: 0

ae-2:
  module_and_function: saltcheck_returns.get_string
  args:
    - "happy day" 
  kwargs:
  assertion: assertEqual
  expected-return: "happy day"

ae-3:
  module_and_function: saltcheck_returns.get_int
  args:
    - -1
  kwargs:
  assertion: assertEqual
  expected-return: -1

ae-4:
  module_and_function: saltcheck_returns.get_int
  args:
    - 100
  kwargs:
  assertion: assertEqual
  expected-return: 100

ae-5:
  module_and_function: saltcheck_returns.get_int
  args:
    - "25"
  kwargs:
  assertion: assertEqual
  expected-return: 25

ae-6:
  module_and_function: saltcheck_returns.get_float
  args:
    - 2.66
  kwargs:
  assertion: assertEqual
  expected-return: 2.66

ae-7:
  module_and_function: saltcheck_returns.get_float
  args:
    - '3.5'
  kwargs:
  assertion: assertEqual
  expected-return: '3.5'

ae-8:
  module_and_function: saltcheck_returns.get_list
  args:
    - ["one", "two", "three"]
  kwargs:
  assertion: assertEqual
  expected-return: ['one', 'two', 'three']

ae-9:
  module_and_function: saltcheck_returns.get_list
  args:
    - []
  kwargs:
  assertion: assertEqual
  expected-return: []

ae-10:
  module_and_function: saltcheck_returns.get_dict
  args:
    - '{"one":1, "two":2, "three":3}'
  kwargs:
  assertion: assertEqual
  expected-return: '{"one":1, "two":2, "three":3}'

ae-11:
  module_and_function: saltcheck_returns.get_bool
  args:
    - True
  kwargs:
  assertion: assertEqual
  expected-return: True

ae-12:
  module_and_function: saltcheck_returns.get_bool
  args:
    - False
  kwargs:
  assertion: assertEqual
  expected-return: False

