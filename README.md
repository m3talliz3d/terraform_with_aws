# terraform_with_aws

<p>A project based on 
<a href="https://www.freecodecamp.org">FreeCodeCamp</a> 
Youtube video called 
<a href="https://www.freecodecamp.org/news/learn-terraform-and-aws-by-building-a-dev-environment/">Learn Terraform and AWS by Building a Dev Environment</a></p>


<h3>Video walkthrough Steps :</h3>
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
</ul>


<li>Configure Security Group</li>
<ul>
    <li>Use VPC ID</li>
    <li>configure ingress</li>
    <li>configure egress</li>
</ul>


<li>Configured data type, to retrieve AMI information, <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami">reference</a>. </li>
<ul>
    <li>via AMI Catalog, got AMI ID of the required image</li>
    <li>via AMI, choose <strong>public image</strong> and paste the AMI ID and retieve owner ID</li>
    <li>Used <b style="color: red">*</b> at the end of <b style="color: red">values</b> to get the latest realease</li>
</ul>

<li>Create a resource for key pair</li>
<ul>
    <li>generate keypair using ssh-keygen ssh-keygen.exe -t ed25519</li>
</ul>

<li>Create Instance</li>
<ul>
    <li>Use AMI ID</li>
    <li>Use created KeyPair</li>
    <li>use Security Group</li>
    <li>Use Subnet ID</li>
</ul>

<li>Create a script file to run iside instance and use user_data to use that file</li> 
<li>Create and SSH configuration and add user to your local SSH config</li>
<ul>
    <li>Create provisioner</li>
    <li>created the variables that will be used in "windows-ssh-config"</li>
    <li>added interpreter just in case</li>
</ul>

</ul></ol></em>
