export AWS_REGION=$1
export COA_AMG_WORKSPACE_ID=$2
export COA_AMG_ENDPOINT_URL=https://$COA_AMG_WORKSPACE_ID.grafana-workspace.$AWS_REGION.amazonaws.com
export AMG_API_KEY=$3
aws ssm put-parameter --name "/cdk-accelerator/grafana-api-key" \
    --type "SecureString" \
    --value $AMG_API_KEY \
    --region $AWS_REGION --overwrite
