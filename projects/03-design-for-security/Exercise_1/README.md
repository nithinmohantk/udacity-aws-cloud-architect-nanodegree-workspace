## Deploy the S3 buckets

`aws cloudformation create-stack --region us-east-1 --stack-name c3-s3 --template-body file://Exercise_1/c3-s3.yml`

Expected Output:

```
{
    "StackId": "arn:aws:cloudformation:us-east-1:1718XXXXXXXXX:stack/c3-s3/xxxxx-xxxx-xxxx-xxxx-xxxxxxx"
}
```
Result:
```Result
{
    "StackId": "arn:aws:cloudformation:us-east-1:305706552515:stack/c3-s3/9f7e4300-a5e4-11ea-9e45-0a6046b66d41"
}
```

## Deploy VPC and Subnets

`aws cloudformation create-stack --region us-east-1 --stack-name c3-vpc --template-body file://Exercise_1/c3-vpc.yml`

Expected Output:

```
{
    "StackId": "arn:aws:cloudformation:us-east-1:1718XXXXXXXXX:stack/c3-vpc/xxxxx-xxxx-xxxx-xxxx-xxxxxxx"
}
```

Result:

```
{
    "StackId": "arn:aws:cloudformation:us-east-1:305706552515:stack/c3-vpc/cbeb8d80-a5e4-11ea-80ed-0e46d57ace87"
}
```

## Deploy Application Stack

`aws cloudformation create-stack --region us-east-1 --stack-name c3-app --template-body file://Exercise_1/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=thinx-dev-sample --capabilities CAPABILITY_IAM
`

Expected Output:

```
{
    "StackId": "arn:aws:cloudformation:us-east-1:1718XXXXXXXXX:stack/c3-app/70dfd370-2118-11ea-aea4-12d607a4fd1c"
}
```
Result: 
```
 aws cloudformation create-stack --region us-east-1 --stack-name c3-app --template-body file://Exercise_1/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=thinx-dev-sample --capabilities CAPABILITY_IAM
{
    "StackId": "arn:aws:cloudformation:us-east-1:305706552515:stack/c3-app/1e99a120-a5e5-11ea-a099-120fbf0f0187"
}
```

Expected example AWS Console status: https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks


## Uploading data to S3 buckets

`aws s3 cp free_recipe.txt s3://cand-c3-free-recipes-305706552515/ --region us-east-1`
`aws s3 cp secret_recipe.txt s3://<BucketNameRecipesSecret>/ --region us-east-1`

Result:
```bash
 Exercise_1   project/03-design-for-security ± 
λ aws s3 cp free_recipe.txt s3://<BucketNameRecipesFree>/ --region us-east-1
upload: .\free_recipe.txt to s3://cand-c3-free-recipes-305706552515/free_recipe.txt

 Exercise_1   project/03-design-for-security ± 
λ aws s3 cp secret_recipe.txt s3://cand-c3-secret-recipes-305706552515/ --region us-east-1
upload: .\secret_recipe.txt to s3://cand-c3-secret-recipes-305706552515/secret_recipe.txt
```

## Test Application

`http://<ApplicationURL>/free_recipe`

Result:
```http://c1-web-service-alb-626998269.us-east-1.elb.amazonaws.com/free_recipe```