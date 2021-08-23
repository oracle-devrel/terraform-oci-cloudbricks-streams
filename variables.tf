# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf 
#
# Purpose: The following file declares all variables used in this backend repository

/********** Provider Variables NOT OVERLOADABLE **********/

variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy."
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"

}

/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

variable "stream_display_name" {
  description = "Display Name of Created Stream"
}

variable "stream_num_partitions" {
  description = "The default number of log partitions per topic."
  default     = "1"
}

variable "stream_log_retention_hours" {
  description = "The number of hours to keep a log file before deleting it (in hours)."
  default     = "24"
}

variable "stream_instance_compartment_name" {
  description = "Compartment name where Stream is located"
  default     = ""
}

variable "stream_pool_display_name" {
  description = "The name of the stream pool."
}

/********** Brick Variables **********/