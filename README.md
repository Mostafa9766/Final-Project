# Final-Project
This project contains:
*  Infrastructure as code using [Terraform](https://www.terraform.io/) that builds an environment on the google cloud platform
* [Kubernetes](https://kubernetes.io) YAML files for deploying jenkins

## Tools Used
- Terraform to build infrastracture on GoogleCloud.
- Kubernetes to make jenkins deployment. 

## Get Started 
- Build infra by terraform.

`terraform init`

`terraform apply --var-file default.tfvars`

- Connect to private instance using ssh.

`gcloud compute ssh --zone "us-central1-b" "management-ce"  --tunnel-through-iap --project "mostafa-ahmed-gomaa"`

 ![alt text](https://github.com/Mostafa9766/Final-Project/blob/master/infra%20and%20jenkins%20deployment%20screenshots/ssh%20private%20instance?raw=true)

- install kubectlg gcloud.
` gcloud components install kubectl`

- join cluster from private instance.
`gcloud container clusters get-credentials cluster-1 --zone us-central1-b --project mostafa-ahmed-gomaa`

 ![alt text](https://github.com/Mostafa9766/Final-Project/blob/master/infra%20and%20jenkins%20deployment%20screenshots/join%20private-%20cluster%20from%20instance?raw=true)
 
- make jenkins deployment using kubernetes.
we can inhance this point if we using helm and create jenkins chart or add helm repo and use jenkins chart from jenkins or bitnami.

![alt text](https://github.com/Mostafa9766/Final-Project/blob/master/infra%20and%20jenkins%20deployment%20screenshots/Screenshot%20from%202022-11-02%2021-41-18.png?raw=true)
 
- add private instance as jenkins agent to run pipline and add its credantial on jenkins.
we can create another pod and use it as jenkins agent or use dynamic jenkins agent with kubernetes.
- Now we finished part-1 from project.
