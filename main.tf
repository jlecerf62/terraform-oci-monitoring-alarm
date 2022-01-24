resource "oci_monitoring_alarm" "monitoring_alarm" {
  #Required
  compartment_id        = var.compartment_id
  destinations          = var.topic_ids
  display_name          = var.alarm_display_name
  is_enabled            = var.alarm_is_enabled
  metric_compartment_id = var.alarm_metric_compartment_id
  namespace             = var.alarm_namespace
  query                 = var.alarm_query
  severity              = var.alarm_severity

  #Optional
  body                             = var.alarm_body
  defined_tags                     = var.defined_tags
  freeform_tags                    = var.freeform_tags
  message_format                   = var.alarm_message_format
  metric_compartment_id_in_subtree = var.alarm_metric_compartment_id_in_subtree
  pending_duration                 = var.alarm_pending_duration
  repeat_notification_duration     = var.alarm_repeat_notification_duration
  resolution                       = var.alarm_resolution
  resource_group                   = var.alarm_resource_group
/*   suppression {
    #Required
    time_suppress_from  = var.alarm_suppression_time_suppress_from
    time_suppress_until = var.alarm_suppression_time_suppress_until

    #Optional
    description = var.alarm_suppression_description
  } */
}