Role Name
=========

Checks if the config line provided is in 'show run all' output and generate a report. This is used to check if a particular service/server is enabled in the network. 

Requirements
------------

- By default generates report in ansible controller host. This requires exposing the ansible host path so that reports can be stored. eg., expose '/opt/ansible' in ansible controller → job settings → Paths to expose to isolated jobs. This '/opt/ansible' folder needs to be created with permissions - read/write for awx user. 


Role Variables
--------------


- `report_server`: server where the reports will be stored. Default: localhost

- `report_base_folder_path`: folder path where ther reports will be stored. Default:`/opt/ansible/reports/service_reports/` 

- `report_file_prefix`: file name prefix for the report.Please note that this will be appended with a timestamp for filename. Default:`service_report_`

- `service_cfg_line`: Config line input which needs to be checked for its presence in show run all output. Default:`ip bootp server`


Dependencies
------------

Required Collections : 
  - cisco.ios

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: cisco_switches
      roles:
         - cisco_check_line_in_config
           vars:
            - service_cfg_line: 'ip http server'

License
-------

BSD

Author Information
------------------
Git: @ssvinoth