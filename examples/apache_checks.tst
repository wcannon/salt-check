correct-version-apache2-installed:
  module_and_function: pkg.version
  args:
    - 'apache2'
  kwargs:
  pillar-data:
  assertion: assertEqual
  expected-return: 2.4.7-1ubuntu4.9

apache-conf-exists:
  module_and_function: file.file_exists
  args:
    - /etc/apache2/apache2.conf
  assertion: assertEqual
  expected-return: True

apache-conf-mode:
  module_and_function: file.get_mode
  args:
    - /etc/apache2/apache2.conf
    - False 
  assertion: assertEqual
  expected-return:  '0644'

apache-conf-user:
  module_and_function: file.get_user
  args:
    - /etc/apache2/apache2.conf
    - False 
  assertion: assertEqual
  expected-return: root

apache-conf-group:
  module_and_function: file.get_group
  args:
    - /etc/apache2/apache2.conf
    - False 
  assertion: assertEqual
  expected-return: root

apache-conf-service-running:
  module_and_function: service.status
  args:
    - apache2
  assertion: assertEqual
  expected-return: True
