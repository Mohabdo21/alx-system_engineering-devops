# This Puppet manifest kills a process named 'killmenow' using pkill.
exec { 'kill_process':
  command => 'pkill -f killmenow',
  path    => ['/bin', '/usr/bin'],
}
