restyaboard-ansible
=========

An ansible playbook to replace the bash install script with more flexibility given by ansible.

Requirements
------------

Latest version of ansible.

Role Variables
--------------
restya_user - restya database user name

    restya_pass - restya database user password
    
    restya_db - restya database name 
    
    restya_github - git location of the restya project
    
    restya_apps_github - git location of the restya apps
    
    restya_install_dir - final install directory of restya
    
    download_dir - where to put the git project at before installing
    
    download_apps_dir - see previous      
    
    postgres_host - what hostname or ip is the database on
    
    postgres_port - what port is the db on
    
    postgres_user - what is the username used to create the restya db and restya user
    
    postgres_pass - what is the user password for the   
    
    postgres_conf - postgresql conf file
    
    nginx_domain - What is your domain name
    
    smtp_user:
    
    smtp_pass:
    
    smtp_host:
    
    smtp_port:
    
    timezone: America/Los_Angeles    
    

Dependencies
------------

restya project gits


License
-------

See associated

Author Information
------------------

See our Shadey Security github for more great projects!
