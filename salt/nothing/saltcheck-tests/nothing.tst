example-test-1-hello:
  module_and_function: cmd.run
  args: 
    - 'echo "hello"'
  kwargs: 
    one: 1
    two: 2
    thre: 3
  assertion: assertEqual
  expected-return:  'hello'
