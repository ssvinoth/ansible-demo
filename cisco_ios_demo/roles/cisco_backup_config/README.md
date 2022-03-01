Role Name
=========

This role helps to backup cisco router running config to scp server

Requirements
------------

- cisco.ios collection is required for the role to execute.
- It also requires the scp_server ip and credentials.
- There must be a folder exist with the inventory name of switch/router in the `backup_base_folder_path` of scp_server

Role Variables
--------------

`backup_base_folder_path`: base folder path where the running-config backups would be stored

`backup_file_prefix`: filename prefix for the running-config backup. Please note that this will be appended with a timestamp for filename.

`scp_server`: scp server domain name or IP address. domain name should be resolvable from the cisco router/switches. 
#### Note: scp_server_user and scp_server_password can also be passed as custom credential.
`scp_server_user`: username to login into scp_server

`scp_server_password`: password for the scp_server_user


Dependencies
------------

Required Collections : 
  - cisco.ios

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: cisco_switches
      roles:
         - cisco_backup_config
           vars:
            - backup_base_folder_path: '/bkp_configs/'
            - backup_file_prefix: 'run-cfg-'
            - scp_server: 192.168.56.100
            - scp_server_user: scp_user
            - scp_server_password: xxxxx

License
-------

BSD

Author Information
------------------
Git : @ssvinoth
An optional section for the role authors to include contact information, or a website (HTML is not allowed).
