variable "username" {
  description = ""
  type        = list(string)
  default     = ["user_1", "user_2", "user_3"]
}

variable "start_date" {
  description = ""
  type        = string
  default     = "2023-06-12T00:00:00Z"
}

variable "end_date" {
  description = ""
  type        = string
  default     = "2023-06-15T00:00:00Z"
}


