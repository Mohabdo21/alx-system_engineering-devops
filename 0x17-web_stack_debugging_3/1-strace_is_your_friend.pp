# This class corrects a typo in the wp-settings.php file
class wp_settings_typo_fix {

  exec { 'correct_wp_settings_typo':
    command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/g' /var/www/html/wp-settings.php",
    path    => '/bin',
    onlyif  => "grep -q 'class-wp-locale.phpp' /var/www/html/wp-settings.php",
  }

}
include wp_settings_typo_fix
