# Egghead :robot: :egg: 
Small project, just a static site hosted and distributed using S3 and CloudFront deployed using GitHub Actions and Terraform.

Definitely a bit overkill for what it is and not worthy of the arc name for now, but will update it to make things cleaner(things like making the pipeline fire off only when specific directories are updated etc). 

I have other plans to build different, more complex and useful tools here in addition to the cleaning, but they are certainly quite the stretch(37% chance I can pull it off).


## For Deployment
This will be improved and explained later, but for now, this should be a rough runthrough.

I recommend ammending the index.html and media files in the v1_static directory to be less me and more you if you actually decide to deploy this for whatever reason. 

- If you just want to see the result, just check out "just-listen.net" instead of all this trouble.


### Requirments
- AWS Account.
- An existing, valid aws acm certificate.
- A Route53 Hosted Zone/Domain that the certificate belongs to.
- A bucket and DDB for tfstate.
- An AWS IAM provider for github configured.
- An AWS role for the pipeline with:
    - DynamoDB Access
    - S3 Access
    - Route53 Access
    - Cloudfront Access
    - A trust policy for your repo

### Deploying
To Deploy:
- Clone or copy this repository.
- Fill in the following variables and secrets with their respective values:
    - Variables:
        - AWS_REGION
        - BUCKET_NAME
        - DOMAIN_NAME
    - Secrets:
        - ACM_ARN
        - AWS_DDB
        - AWS_ROLE
        - AWS_S3_BUCKET
- Push to main
- Check your domain once the pipelines are finished.
- Once deployed, updating the webpage will just be a case of changing and pushing the index file.



