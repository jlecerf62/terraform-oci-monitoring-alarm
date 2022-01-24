output "monitoring_all_attributes" {
  description = "all attributes of monitoring alarm"
  value       = { for k, v in oci_monitoring_alarm.monitoring_alarm : k => v }
}

output "destinations" {
  description = "A list of destinations to which the notifications for this alarm will be delivered. Each destination is represented by an OCID related to the supported destination service."
  value       = oci_monitoring_alarm.monitoring_alarm.destinations
}

output "display_name" {
  description = "A user-friendly name for the alarm. It does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_monitoring_alarm.monitoring_alarm.display_name
}

output "alarm_is_enabled" {
  description = "Whether the alarm is enabled"
  value       = oci_monitoring_alarm.monitoring_alarm.is_enabled
}

output "alarm_metric_compartment_id" {
  description = "The OCID of the compartment containing the metric being evaluated by the alarm."
  value       = oci_monitoring_alarm.monitoring_alarm.metric_compartment_id
}

output "alarm_namespace" {
  description = "The source service or application emitting the metric that is evaluated by the alarm"
  value       = oci_monitoring_alarm.monitoring_alarm.namespace
}

output "alarm_query" {
  description = "The Monitoring Query Language (MQL) expression to evaluate for the alarm. "
  value       = oci_monitoring_alarm.monitoring_alarm.query
}

output "alarm_severity" {
  description = "The perceived type of response required when the alarm is in the \"FIRING\" state"
  value       = oci_monitoring_alarm.monitoring_alarm.severity
}

output "alarm_body" {
  description = "The human-readable content of the notification delivered."
  value       = oci_monitoring_alarm.monitoring_alarm.body
}

output "alarm_message_format" {
  description = "The format to use for notification messages sent from this alarm: RAW, PRETTY_JSON or ONS_OPTIMIZED"
  value       = oci_monitoring_alarm.monitoring_alarm.message_format
}

output "alarm_metric_compartment_id_in_subtree" {
  description = "When true, the alarm evaluates metrics from all compartments and subcompartments."
  value       = oci_monitoring_alarm.monitoring_alarm.metric_compartment_id_in_subtree
}

output "alarm_pending_duration" {
  description = "The period of time that the condition defined in the alarm must persist before the alarm state changes from \"OK\" to \"FIRING\". The duration is specified as a string in ISO 8601 format"
  value       = oci_monitoring_alarm.monitoring_alarm.pending_duration
}

output "alarm_repeat_notification_duration" {
  description = "The frequency at which notifications are re-submitted, if the alarm keeps firing without interruption. Format defined by ISO 8601."
  value       = oci_monitoring_alarm.monitoring_alarm.repeat_notification_duration
}

output "alarm_resolution" {
  description = "The time between calculated aggregation windows for the alarm."
  value       = oci_monitoring_alarm.monitoring_alarm.resolution
}

output "alarm_resource_group" {
  description = "Resource group that you want to match. A null value returns only metric data that has no resource groups."
  value       = oci_monitoring_alarm.monitoring_alarm.resource_group
}

output "alarm_suppression_time_suppress_from" {
  description = "The start date and time for the suppression to take place, inclusive. Format defined by RFC3339."
  value       = oci_monitoring_alarm.monitoring_alarm.suppression[*].time_suppress_from
}

output "alarm_suppression_time_suppress_until" {
  description = "The end date and time for the suppression to take place, inclusive. Format defined by RFC3339."
  value       = oci_monitoring_alarm.monitoring_alarm.suppression[*].time_suppress_until
}

output "alarm_suppression_description" {
  description = "Human-readable reason for suppressing alarm notifications."
  value       = oci_monitoring_alarm.monitoring_alarm.suppression[*].description
}