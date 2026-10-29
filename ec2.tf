module "instance"{
    source= "../terraform-aws-instance"
    ami_id= "ami-0220d79f3f480ecf5"
    instance_type= "t3.micro"
    security_group= ["sg-0df54e29f386539fe"]
    tags={
        Name= "terraform"
        project= "roboshop"
        environment= "dev"
    }
}
output "public_ip"{
    value= module.instance.public_ip
}
output "private_ip"{
    value= module.instance.private_ip
}
