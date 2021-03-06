variable "enabled" {
  default = true
}

variable "region" {
  default = "us-west-2"
}

variable "features" {
  default = {
    shared-infra = true
    cdn          = true
    rds          = true
    redis        = true
  }
}

variable "cloudfront_attachments" {
  default = {
    "enabled"           = true
    "distribution_name" = "mdn-attachment-cdn"
    "aliases.stage"     = ""

    #FIXME: mdn.mozillademos.org is taken
    #aliases.prod"      = "mdn.mozillademos.org,demos.mdn.mozit.cloud"
    "aliases.prod" = "demos.mdn.mozit.cloud,mdn.mozillademos.org"

    "acm_arn.stage" = ""
    "acm_arn.prod"  = "arn:aws:acm:us-west-2:178589013767:certificate/2f399635-126c-4e83-bf43-5ddbd0525719"
    "domain.stage"  = "stage.mdn.mozit.cloud"
    "domain.prod"   = "demos-origin.mdn.mozit.cloud"
  }
}

variable "cloudfront_media" {
  default = {
    "enabled"       = true
    "aliases.stage" = "media.stage.mdn.mozit.cloud,attachments.stage.mdn.mozit.cloud"
    "aliases.prod"  = "media.prod.mdn.mozit.cloud,attachments.prod.mdn.mozit.cloud"
  }
}

variable "redis" {
  default = {
    "node_size.stage" = "cache.t2.small"
    "node_size.prod"  = "cache.m3.xlarge"
    "num_nodes.stage" = "3"
    "num_nodes.prod"  = "3"
  }
}

variable "rds_defaults" {
  description = "If you want to override some rds input variables, see local.tf for more of what you can override"
  type        = any
  default     = {}
}

variable "rds" {
  type    = any
  default = {}
}

variable "kms" {
  default = {
    "key_id.us-west-2" = ""
  }
}
