variable "region" {}

# general
variable "vpc_id" {}

# snippets ELB
variable "snippets_elb_name" {}

variable "snippets_subnets" {}

variable "snippets_http_listener_instance_port" {}

variable "snippets_https_listener_instance_port" {}

variable "snippets_ssl_cert_id" {}


# snippets-stats ELB
variable "snippets-stats_elb_name" {}

variable "snippets-stats_subnets" {}

variable "snippets-stats_http_listener_instance_port" {}

variable "snippets-stats_https_listener_instance_port" {}

variable "snippets-stats_ssl_cert_id" {}

# careers ELB
variable "careers_elb_name" {}

variable "careers_subnets" {}

variable "careers_http_listener_instance_port" {}

variable "careers_https_listener_instance_port" {}

variable "careers_ssl_cert_id" {}