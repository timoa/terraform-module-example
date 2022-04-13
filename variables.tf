#############################
# Global
#############################

variable "namespace" {
  type        = string
  description = "Project name that will be use to identifiy the resources"
  default     = "my-project"
}

variable "stage" {
  type        = string
  description = "Stage/environment name to tag and suffix the infrastructure composants"
  default     = "dev"
}

#############################
# Labels
#############################

variable "labels" {
  type        = map(string)
  description = "Default labels to associate to these resources"
  default = {
    # Only lowercase keys allowed
    businessunit = "mycompany"
    team         = "devops"
    terraform    = "true"
  }
}
