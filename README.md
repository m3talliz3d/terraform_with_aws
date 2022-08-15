# terraform_with_aws

<p>A project based on 
<a href="https://www.freecodecamp.org">FreeCodeCamp</a> 
Youtube video called 
<a href="https://www.freecodecamp.org/news/learn-terraform-and-aws-by-building-a-dev-environment/">Learn Terraform and AWS by Building a Dev Environment</a></p>


<h3>To configure VPC, you need to configure these dependencies:</h3>
<em>
<ol>
<li>Configure a "VPC" with CIDR range</li>
<li>Configure a subnet to be used for the EC2 instance (use VPC ID)</li>
<li>Create an Internet gateway</li>
<li>Create a route table (Use VPC ID)</li>
<ul>
    <li>Use VPC ID</li>
</ul>
<li>Create a default route</li>
<ul>
    <li>Use Route Table ID</li>
    <li>Use IGW ID</li>
</ul>
<li>Create an subnet association in Route Table</li>
<ul>
    <li>Use Subnet ID</li>
    <li>Use Route Table ID</li>
</ul></ol></em>
