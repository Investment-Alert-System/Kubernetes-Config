variable "context" {
    type = string
    description = "the projectname"
}

variable "stage" {
    type = string
    description = "the stage of the environment, like dev, prod etc..."
}

variable "domain" {
    type = string
    description = "the domain name"
}


variable "versions" {
    type = map(string)
    description = "Versions of the microservices to deploy"
}