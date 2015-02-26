SoCal DevOps Meet Up Intro to Chef
===============
This is code created and used in the Intro to Chef demo I presented on 2/25/2015 at the SoCal Devops Meet Up. 

I recommend going to [learn.chef.io](https://learn.chef.io) to get a solid walkthrough of all the Chef basics.

apache cookbook
---------------
The apache cookbook can be found in the cookbooks directory. It has a commented out file resource as well as a template resource that are interchangable. This was used to demonstrate refactoring your cookbook from a static file resource to a dynamic template resource.

Serverspec Tests
-------------------
The Serverspec tests can be found in the following path:
[cookbooks/apache/test/intergration/default/serverspec/default_spec.rb](cookbooks/apache/test/intergration/default/serverspec/default_spec.rb)

for more information about writing serverspec tests check out: http://serverspec.org

kitchen.yml file
----------------
The kitchen.yml file is where you establish your TestKitchen environment. I have commented out the ec2 settings for simplicity, however if would like to try them out you can install the kitchen-ec2 driver:

``` chef gem install kitchen-ec2```

Then fill in the apropriate fields for your enviornment, such as keys and subnet.

To run a test, make sure you are inside the cookbooks/apache directory:

```kitchen create```
```kitchen converge```
```kitchen verify```
```kitchen destroy```
or... do all four in one command!
```kitchen test```
If it passes all test machines will be destroyed, if it fails it will remain alive so you can trouble shoot it with:
```kitchen login```
This allows you to login and dig through your virtual machine.


