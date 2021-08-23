# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# streams.tf
#
# Purpose: The following file defines the logic to create a Stream
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/streaming_stream


resource "oci_streaming_stream" "Stream" {
  name               = var.stream_display_name
  partitions         = var.stream_num_partitions
  retention_in_hours = var.stream_log_retention_hours
  stream_pool_id     = local.spool_id
}