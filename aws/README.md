AWS Config
==========
These are example AWS configs which demonstrate configuring the AWS CLI and
Boto libraries for multiple credentials and for using assumed roles.

config
------
Unix location: `~/.aws/config`

The AWS config handles core AWS cli configurations, default regions, mfa device
information, and roles to assume. This file should **never** contain any secret
keys/tokens/credentials.

credentials
-----------
Unix location: `~/.aws/credentials`
This file contains the AWS key_id and secret_access_key.  The contents of this
file are sensitive and should **never** be shared, and the file permissions set
accordingly (`chmod og-rwx "~/.aws/credentials"`).
