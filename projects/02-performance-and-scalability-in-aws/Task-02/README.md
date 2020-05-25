# [Initial Cost Estimate](Initial_Cost_Estimate.csv) 
Estimated Cost: Monthly - **8,855.32 USD**

Rationale: 
- A highly performing database backend with provisioned Iops and web/app tiers can handle consistant load, can perform well up to specific of 1000 concurrent users per instance. 

*SPEC*
Single spec for EC2 instance for all web/app tier. 
- Total 8 instances. 
- - 4 x t3a.2xlarge - general purpose, web tier) - 2 each in AZ's
- - 4 x m4.2xlarge  (memory optimized, app tier) - associated to private subnet
- VPC with - 2 x NAT Gateway - one for each AZ 
- 2 x Application Load Balancer - 1 internal and 1 external  
- 2 x RDS for MySQL Storage for each RDS instance (Provisioned IOPS SSD (io1)), Storage amount (100 GB), Instance type (db.r5.4xlarge), Additional backup storage (2 TB)
- 2 x Elastic IPs - One each to NAT gateway 

https://calculator.aws/#/estimate?id=aaa0b4b47c0da5f4169c6f552422cc1b1f5c4c91

# [Low Cost Estimate](Reduced_Cost_Estimate.csv)  
Estimated Cost: Monthly - **6,240.36 USD**

Rationale: 
 - A good performing database backend with read replicas in multi-az single region and web/app tiers can perform well up to specific of 250-500 concurrent users per instance. 

*SPEC*
Added specific t3 shape for EC2 in web and m4 shape for app tier.
 - 4x t3.large web tier instances 
 - 4x m4.large app tier instances
- 2 x RDS for MySQL Storage for each RDS instance - (General Purpose SSD (gp2)), Storage amount to (100 GB), instance type to db.m5.4xlarge, backup storage to 2TB
 
https://calculator.aws/#/estimate?id=5c998ad862632821c9cdd4a951d919f934fe1d25

# [High Cost Estimate](Increased_Cost Estimate.csv) 
Estimated Cost: Monthly - **19,409.59 USD**

Rationale: 
 - Extremely performing database backend with read replicas win multi-az single region, and web/app tiers can perform well up to 1000 concurrent users per instance. 
 - Additional Ec2 instance included to support 2 * multiple  requests 
 - Additional read replicas/slave added to make database more redundant

*SPEC* 
1. Increases EC2 instances shape to t6.x2large and m6.x2large accordingly and increased desired instance count to 8 from 4, for each web/app. 
2. Increased NAT throwput
 - Added 2 more replicas to RDS storage/size to handle more read workload. Instance also updated to better fitting one. (db.r5.4xlarge). IOPS to 2000, Storage to 1000, Backup storage to 2 tb
 - 8x t3a.2xlarge web tier instances 
 - 8x m6g.2xlarge app tier instances
 - updated NAT throwput
 - EBS storage size per instance increased 
 - Route 53 - Added additional 4 network interfaces
 - Updated S3 to 10TB per month
 - Added s3 glacier storage with 10TB per month  
 
https://calculator.aws/#/estimate?id=80be10c6cb6d3452cbdb810c4d4098a53e769ef6
https://calculator.aws/#/estimate?id=5c76073231c910c0939af4dc61da8ebdc6b81648

## Some old works
https://calculator.aws/#/estimate?id=d81d035f87d03410f98f8c9a4480aa2a3f04ddbb