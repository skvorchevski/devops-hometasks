node default {
	package { 'httpd':
		ensure => installed,
	}
}

node slave1 {
	file { '/tmp/index.html':
        ensure => present,
        source => "/var/www/html/",
    }

    service { 'httpd':
    	ensure => running,
    	enable => true,
     }
}

node slave2 {
	file { 'index.html':
		path => '/var/www/html/index.html',
		ensure => absent,
	}

	file { '/tmp/index.php':
        ensure => present,
        source => "/var/www/html/",
    }

    service { 'httpd':
		ensure => running,
		enable => true,
    }
}