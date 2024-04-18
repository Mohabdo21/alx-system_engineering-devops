#0-the_sky_is_the_limit_not.pp level up open file limit
exec { 'set open file limit to 4096':
  path    => '/bin',
  command => "sed -i 's/15/4096/' /etc/default/nginx"
}
exec { 'reboot nginx':
  command => '/usr/sbin/service nginx restart'
}
