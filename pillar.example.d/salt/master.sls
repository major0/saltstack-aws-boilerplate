salt:
  cloud:
    template_sources:
      providers: salt://aws/files/cloud.providers.d
      profiles: salt://aws/files/cloud.profiles.d
  master:
    top_file_merging_strategy: same
    fileserver_backend:
      - git
      - roots
    gitfs_remotes:
      - https://github.com/<USERNAME>/<REPOSITORY>:
        - root: salt
    ext_pillar:
      - git:
        - master https://github.com/<USERNAME>/<REPOSITORY>:
          - root: pillar
salt_formulas:
  list:
    base:
      - aws-formula
      - salt-formula
