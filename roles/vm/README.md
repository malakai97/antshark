# Overview

This role is intended to be applied once per each
project that will use vagrants.

## Vars

* vm_user: Username of user that will use the vagrants
* vm_ip_range: ip range for these vms, of the form 192.168.99.*
* vm_app_name: one-word name for the app
* vm_box_name: Name of the vm box image to use, from 
  https://atlas.hashicorp.com/boxes/search
* vm_guests:  List of name:ip pairs with which a guest will be created


## Example usage

    - hosts: production
      become: yes
      roles:
        - role: vm
          vm_user: bhock
          vm_ip_range: 192.168.33.*
          vm_app_name: myapp
          vm_box_name: ubuntu/trusty64
          vm_guests:
            - name: db1
              ip: 192.168.33.1
            - name: app1
              ip: 192.168.33.2
