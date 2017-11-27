# Keep your Public WAN IP updated in AWS Secuirty Groups

This script will keep your public WAN IP updated in AWS security groups.

## Getting Started

* Add the secuirty groups you need to keep updated one per line into groups.list
* Add the ports you need opened one per line in ports.list
* You will need to have your AWS CLI configured for profiles and to enter the name of the profile on the commandline. ** See Examples **

### Prerequisites

* AWS CLI
* dig
* awk
* cat 

```
Examples
```
./ipupdate aws_profile

### Installing

Say something about Crontab here

```
Give the cron example her
```
## TODO

```
I need to build in logic for multiple AWS accounts. Currently this only works with one AWS CLI profile.  
```

## Authors

* **Benjamin Connelly** - [nClouds](https://www.nclouds.com)

## License

Do as you will

## Acknowledgments

* Thank you Jeremias!

