restyaboard-ansible
=========

An ansible playbook to replace the bash install script with more flexibility given by ansible.

Requirements
------------

Latest version of ansible. This was only tested on Ubuntu 16.04 LTS, should work on any debian or rhel variant, but not guarenteed.

Role Variables
--------------
'''
<variable> : <default> # <Purpose>
restya_user: "restya"  # database user used by restya
restya_pass: "hjVl2rGd22" # database user password used by restya
restya_db: "restyaboard" # restyaboard's db
restya_github: "https://github.com/RestyaPlatform/board.git" 
restya_apps_github: "https://github.com/RestyaPlatform/board-apps.git"
restya_install_dir: "/var/www/restyaboard"
download_dir: "/opt/restyaboard"
download_apps_dir: "{{ download_dir }}/client/apps"    
db_host: "localhost"
db_port: 5432 # 5432 for postgres localhost, but use unix local sockets when able
db_user: "postgres"
db_pass: ""
db_conf: "/etc/postgresql/9.5/main/pg_hba.conf" # This varies host to host and postgres version to version...
domain: "{{ ansible_fqdn }}"
smtp_user: 
smtp_pass: 
smtp_host: 
smtp_port: 
timezone: "America/Los_Angeles"
admin_email: 
letsencrypt_challenge_name: "sample_com_challenge"
cert_country: "US"
company: "Shadey Security Wannabe"
cert_city: "Seattle"
cert_state: "Washington"
web_port: 443
provider: "nginx" # apache2 or nginx work
stage: "stable" #stable, dev or latest work
database: "postgresql" # postgresql, mariadb or mysql work
requirements: false # Set true to skip generic requirements install
stable_url: "https://github.com/RestyaPlatform/board/releases/download/v0.4.2/board-v0.4.2.zip" 
'''    

Dependencies
------------
The project relies on these dependencies:
'''
   - apparmor
    - unzip
    - jq
    - python-software-properties
    - libjpeg8
    - php
    - postfix
    - php7.0-fpm
    - php7.0-cli
    - libpq5
    - php7.0-pgsql
    - php7.0-mbstring
    - php7.0-ldap
    - php7.0-curl
    - gcc
    - dos2unix
    - imagemagick
    - php7.0-imap
    - php7.0-xml
    - wget
    - ca-certificates
    - php-geoip
    - php7.0-dev
    - libgeoip-dev
    - geoip-bin
    - geoip-database-extra 
    - geoip-database 
    - autotools-dev
    - automake
    - erlang
    - libyaml-dev
    - rebar
    - curl
    - debian-keyring 
    - debian-archive-keyring
    - libnl-3-200
    - libnl-3-dev
    - libnl-genl-3-200
    - libnl-genl-3-dev
    - expat
    - python-pip 
    - python-dev 
    - libssl-dev 
    - build-essential 
    - libtool 
    - autoconf
    - fail2ban
    - pip
    - psycopg2
    - pyOpenSSL
    - pexpect
    - webserver (apache+mods or nginx)
    - SQL server (postgres+exts or soon mariadb)

'''
License
-------

See associated license file.

Author Information
------------------
Written by ShadeyShades.
See our Shadey Security github for more great projects!
