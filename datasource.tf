# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# datasource.tf
#
# Purpose: The following script defines the lookup logic used in code to obtain pre-created or JIT-created resources in tenancy.


/********** Compartment and CF Accessors **********/
data "oci_identity_compartments" "COMPARTMENTS" {
  compartment_id            = var.tenancy_ocid
  compartment_id_in_subtree = true
  filter {
    name   = "name"
    values = [var.stream_instance_compartment_name]
  }
}


data "oci_streaming_stream_pools" "SPOOL" {
  compartment_id = local.compartment_id
  filter {
    name   = "name"
    values = ["${var.stream_pool_display_name}"]
  }
}

locals {

  # Compartment OCID Local Accessor
  compartment_id = lookup(data.oci_identity_compartments.COMPARTMENTS.compartments[0], "id")
  # Stream Pool OCID Local Accessor
  spool_id = data.oci_streaming_stream_pools.SPOOL.stream_pools[0].id

}