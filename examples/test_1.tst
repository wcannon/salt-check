example-test:
  mod_func: cmd.run
  args:
    - uptime
  kwargs:
  pillar-data: 
  assertion: assertNotEqual
  expected-return:  12345
