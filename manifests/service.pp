class ntp::service(
  String $service_name         = $ntp::service_name,
  String $service_ensure       = $ntp::service_ensure,
  Boolean $service_enable      = ntp::service_enable,
  Boolean $service_has_status  = $ntp::service_has_status,
  Boolean $service_has_restart = $ntp::service_has_restart,
) {
  service { 'ntp':
    ensure      => $service_ensure,
    enable      => $service_enable,
    name        => $service_name,
    has_status  => $service_has_status,
    has_restart => $service_has_restart,
  }
}
