## Challenge & Solution

Script contain challenges and solutions for following problem.

### Challenge #1
A 3 tier environment is a common setup. Use a tool of your choosing/familiarity create these resources. Please remember we will not be judged on the outcome but more focusing on the approach, style and reproducibility.

### Solution #1
Script is done using `terraform` where 3 tier environment is privisioned in which a VPC is logically dividing into 3 tier/layer (public, private, data).

- Public Subnet - Consist of 3 subnet and has access to internet. It can used to have service which need to access internet.
- Private Subnet - Consist of 3 subnet and has no access to internet, it can be used to deploy and configure services, apigw
- Private Subnet - Consist of 3 subnet and has no access to internetm it can be used to deploy databases.

It also consist of Internet Gateway and NAT to provide access to public and private subnet respectively.
### Challenge #2
We need to write code that will query the meta data of an instance within aws and provide a json formatted output. The choice of language and implementation is up to you. Bonus Points - The code allows for a particular data key to be retrieved individually

### Solution #2
A simple bash script to pull instance metadata and print the ouput in JSON format using JQuery

ssh to AWS Ec2 instance and execute the below on `metadata.bash`

`bash metadata.bash`

### Challenge #3
We have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.
```
Example Inputs
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
object = {“x”:{“y”:{“z”:”a”}}}
key = x/y/z
value = a
```

### Solution #3
A simple python function which take object and key and input argument and print the value based on the provided key.

`python get_value.py`
