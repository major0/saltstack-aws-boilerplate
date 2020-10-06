StaltStack AWS Boilerplate
==========================
**WARNING!! This is a work-in-progress and is only good for destroying your
data and taking down your servers. Please DO NOT attempt to use any of this
code unless you are actively helping to improve it _AND_ if you are willing to
destroy all resources in your [AWS][] account.**

This repo aims to serve as a starting boilerplate for anyone wishing to use
[SaltStack][] with [AWS][].

This repo contains [SaltStack][] [Orchestration][] for bootstraping an **new**
[AWS][] account as well as pillar examples for configuring various parts of the
[AWS][] infrastructure from [SaltStack][].

The [AWS][] bootstrap orchestration will perform the following modifications to
your [AWS][] account.
1. Secure the default [VPC][] **(WARNING this could bring your site off-line
   if you have running instances in [AWS][])**
2. Create commonly used policies and groups (admin, user, developer,
   saltmaster).
3. Create a saltmaster [EC2][] key.
4. Launch n saltmaster [EC2][] instanced named `salt`. The saltmaster will be
   deployed using [SaltCloud][] and should pick up its configs from the
   configured repository.

Install SaltStack
-----------------
While you do not need to fully install [SaltStack][], you do need to have at
least `salt-call` installed. See:
https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html

Configure AWS
-------------
Before you can begin you need to validate your local [AWS][] configuration.
See: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html

You can test to see if everything is working by running the following command
from the topdir of this repository.

```
salt-call -c config boto_vpc.describe_vpcs
```

If this lists your default [VPC][] then great! If this lists multi [VPC][]'s
then please reconsider continuing with this guide.


Deployment
----------
Once the above configuration is ready you should be able run the following and
bootstrap your account.

**WARNING!! This has never been executed on any account and is completely untested!!**

```
salt-call --local state.orchestrate orch.aws
```

[//]: # (The following are reference links used elsewhere in the document)

[AWS]: https://aws.amazon.com/
[EC2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html
[Git]: https://git-scm.com/
[GitHub]: https://www.github.com
[GitHub Actions]: https://help.github.com/en/actions
[Orchestration]: https://docs.saltstack.com/en/latest/topics/orchestrate/orchestrate_runner.html
[SaltCloud]: https://docs.saltstack.com/en/latest/topics/cloud/
[SaltStack]: https://www.staltstack.com
[VPC]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
