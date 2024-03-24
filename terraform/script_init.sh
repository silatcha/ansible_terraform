export GITLAB_ACCESS_TOKEN=glpat-n7ra6nNtV1jBxvF-LB6o
export TF_STATE_NAME=default
terraform init \
    -backend-config="address=https://git-formation.adlere.fr/api/v4/projects/115/terraform/state/$TF_STATE_NAME" \
    -backend-config="lock_address=https://git-formation.adlere.fr/api/v4/projects/115/terraform/state/$TF_STATE_NAME/lock" \
    -backend-config="unlock_address=https://git-formation.adlere.fr/api/v4/projects/115/terraform/state/$TF_STATE_NAME/lock" \
    -backend-config="username=lab20" \
    -backend-config="password=$GITLAB_ACCESS_TOKEN" \
    -backend-config="lock_method=POST" \
    -backend-config="unlock_method=DELETE" \
    -backend-config="retry_wait_min=5"
    
    