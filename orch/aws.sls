bootstrap_aws_account:
  salt.state:
    - tgt: '*'
    - sls:
      - aws.network
      - aws.policies

deploy_saltmaster:
  salt.runner:
    - name: cloud.profile
    - prof: saltmaster
    - provider: ec2
    - instances:
      - salt
    - require:
      - salt: bootstrap_aws_acount
