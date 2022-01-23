variable "region" {}
variable "private_key_path" {}
variable "fingerprint" {}
variable "user_ocid" {}
variable "tenancy_ocid" {}
variable "compartment_id" {}

# Required 

variable "topic_ids" {
  type        = list(string)
  description = "(Updatable) A list of destinations to which the notifications for this alarm will be delivered. Each destination is represented by an OCID related to the supported destination service."
}

variable "alarm_display_name" {
  type        = string
  description = "(Updatable) A user-friendly name for the alarm. It does not have to be unique, and it's changeable. Avoid entering confidential information."
}

variable "alarm_is_enabled" {
  type        = bool
  description = "(Updatable) Whether the alarm is enabled"
}

variable "alarm_metric_compartment_id" {
  type        = string
  description = "(Updatable) The OCID of the compartment containing the metric being evaluated by the alarm."
}

variable "alarm_namespace" {
  type        = string
  description = "(Updatable) The source service or application emitting the metric that is evaluated by the alarm"
}

variable "alarm_query" {
  type        = string
  description = "(Updatable) The Monitoring Query Language (MQL) expression to evaluate for the alarm. "
}

variable "alarm_severity" {
  type        = string
  description = "(Updatable) The perceived type of response required when the alarm is in the \"FIRING\" state"
}

#Optional

variable "defined_tags" {
  type = string
}

variable "freeform_tags" {
  type = string
}

variable "alarm_body" {
  type        = string
  description = "(Updatable) The human-readable content of the notification delivered."
}

variable "alarm_message_format" {
  type        = string
  description = "(Updatable) The format to use for notification messages sent from this alarm: RAW, PRETTY_JSON or ONS_OPTIMIZED"
}

variable "alarm_metric_compartment_id_in_subtree" {
  type        = bool
  description = "(Updatable) When true, the alarm evaluates metrics from all compartments and subcompartments."
}

variable "alarm_pending_duration" {
  type        = string
  description = "(Updatable) The period of time that the condition defined in the alarm must persist before the alarm state changes from \"OK\" to \"FIRING\". The duration is specified as a string in ISO 8601 format"

}

variable "alarm_repeat_notification_duration" {
  type        = string
  description = "(Updatable) The frequency at which notifications are re-submitted, if the alarm keeps firing without interruption. Format defined by ISO 8601."
}

variable "alarm_resolution" {
  type        = string
  description = "(Updatable) The time between calculated aggregation windows for the alarm."
}

variable "alarm_resource_group" {
  type        = string
  description = " (Updatable) Resource group that you want to match. A null value returns only metric data that has no resource groups."
}

variable "alarm_suppression_time_suppress_from" {
  type        = string
  description = "(Updatable) The start date and time for the suppression to take place, inclusive. Format defined by RFC3339."
}

variable "alarm_suppression_time_suppress_until" {
  type        = string
  description = "(Updatable) The end date and time for the suppression to take place, inclusive. Format defined by RFC3339."
}

variable "alarm_suppression_description" {
  type        = string
  description = "Human-readable reason for suppressing alarm notifications."
}