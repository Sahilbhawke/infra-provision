variable region {
        description = "aws region"
        default = "us-west-1"
}

variable ami {
        description = "ami for ec2 instance as per region"
        type = map(string)
        default = {
                "us-west-1" = "i-05bb2848e843c80f5"
        }
}

variable instance_type {
        description = "instance type of ec2"
        default = "t2.micro"
}

variable key_name {
        description = "key for ec2"
        default = "project"
}

variable subnet_id {
        description = "subnet for ec2"
        default = "subnet-0904acf10cbeeaba9"
}

variable sg_ids {
        description = "security groups for ec2"
        type = list(string)
        default = ["sg-0890bf012a6c50851"]
}
variable apptag {
        description = "Tag for ec2"
        default = "BATA_DEV_SERVER"
}
