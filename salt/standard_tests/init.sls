# This state exists solely to allow a standard way to functionally test all the assertions against most of the data types.

# The saltcheck tests run against a dummy custom module made just to return data in an expected and predictable way.

# This file (and this line specifically) simply makes the state directory a valid state.
uptime:
  cmd.run
