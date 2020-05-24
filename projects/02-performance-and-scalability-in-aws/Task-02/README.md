# [Initial Cost Estimate](Initial_Cost_Estimate.csv) 

Single spec for EC2 instance for all web/app tier. 
- Total 8 instances. 

https://calculator.aws/#/estimate?id=d81d035f87d03410f98f8c9a4480aa2a3f04ddbb
https://calculator.aws/#/estimate?id=aaa0b4b47c0da5f4169c6f552422cc1b1f5c4c91

# [Low Cost Estimate](Reduced_Cost_Estimate.csv) 
Added specific t3 shape for EC2 in web and m4 shape for app tier.
 - 4x t3 web tier instances 
 - 4x m4 app tier instances
 
https://calculator.aws/#/estimate?id=5c998ad862632821c9cdd4a951d919f934fe1d25

# [High Cost Estimate](Increased_Cost Estimate.csv) 
1. Increases EC2 instances shape to t6.x2large and m6.x2large accordingly and increased desired instance count to 8 from 4, for each web/app. 
2. Increased NAT throwput, and RDS storage/size to handle more workload. Instance also updated to better fitting one. (db.m5.12xlarge)
 - 8x t6 web tier instances 
 - 8x t6 app tier instances
 - updated NAT throwput
 - EBS storage size per instance increased 
 
https://calculator.aws/#/estimate?id=80be10c6cb6d3452cbdb810c4d4098a53e769ef6
https://calculator.aws/#/estimate?id=5c76073231c910c0939af4dc61da8ebdc6b81648