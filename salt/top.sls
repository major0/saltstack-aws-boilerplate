base:
  '*':
    - salt.minion

  'salt':
    - aws.network
    - aws.policies
    - aws.users
    - salt.master
