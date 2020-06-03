## Deploy the S3 buckets

`aws cloudformation create-stack --region eu-west-1 --stack-name c3-s3 --template-body file://Exercise_1/c3-s3.yml`

Expected Output:

```
{
    "StackId": "arn:aws:cloudformation:eu-west-1:1718XXXXXXXXX:stack/c3-s3/xxxxx-xxxx-xxxx-xxxx-xxxxxxx"
}
```
## Deploy VPC and Subnets

`aws cloudformation create-stack --region eu-west-1 --stack-name c3-vpc --template-body file://Exercise_1/c3-vpc.yml`

Expected Output:

```
{
    "StackId": "arn:aws:cloudformation:eu-west-1:1718XXXXXXXXX:stack/c3-vpc/xxxxx-xxxx-xxxx-xxxx-xxxxxxx"
}
```

## Deploy Application Stack

`aws cloudformation create-stack --region eu-west-1 --stack-name c3-app --template-body file://Exercise_1/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=<key pair name> --capabilities CAPABILITY_IAM
`

Expected Output:

```
{
    "StackId": "arn:aws:cloudformation:eu-west-1:1718XXXXXXXXX:stack/c3-app/70dfd370-2118-11ea-aea4-12d607a4fd1c"
}
```

Expected example AWS Console status: https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks


## Uploading data to S3 buckets

`aws s3 cp free_recipe.txt s3://<BucketNameRecipesFree>/ --region eu-west-1`
`aws s3 cp secret_recipe.txt s3://<BucketNameRecipesSecret>/ --region eu-west-1`

## Test Application

`http://<ApplicationURL>/free_recipe`