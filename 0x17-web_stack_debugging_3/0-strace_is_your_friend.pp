# 0-strace_is_your_friend.pp
exec { 'fix-apache':
  command => '/bin/chown -R www-data:www-data /var/www/html',
  onlyif  => '/usr/bin/test $(/usr/bin/stat -c %U /var/www/html) != "www-data"',
}




