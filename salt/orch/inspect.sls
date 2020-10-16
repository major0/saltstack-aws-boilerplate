aws_account_id:
  salt.function:
    - name: boto_iam.get_account_id
    - tgt: '*'

##
# FIXME doesn't currently exist?
#aws_current_region:
#  salt.function:
#    - name: boto3mod.get_current_region
#    - tgt: '*'

##
# FIXME Doesn't exist in boto_ec2, and the salt.cloud interface isn't
# accessible to orchestration?
#aws_availability_zones:
#  salt.function:
#    - name: boto_ec2.list_availability_zones
#    - tgt: '*'
