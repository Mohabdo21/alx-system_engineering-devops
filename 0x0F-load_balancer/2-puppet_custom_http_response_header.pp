# 2-puppet_custom_http_response_header.pp
node 'default' {
  # Ensure the package manager is up to date
  exec { 'apt_update':
    command => '/usr/bin/apt-get update',
  }

  # Ensure Nginx is installed
  package { 'nginx':
    ensure  => installed,
    require => Exec['apt_update'],
  }

  # Define the custom response header
  $header = "\n\tadd_header X-Served-By \$hostname;\n"

  # Add the custom header to the Nginx configuration
  file_line { 'nginx_custom_header':
    path    => '/etc/nginx/sites-available/default',
    line    => $header,
    match   => '^\\s*add_header X-Served-By',
    after   => 'server {',
    require => Package['nginx'],
  }

  # Ensure the Nginx service is running
  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File_line['nginx_custom_header'],
  }
}
