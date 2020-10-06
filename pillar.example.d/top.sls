base:
  '*':
    - salt.minion

  'salt':
    - aws.groups
    - aws.users
    - salt.master
