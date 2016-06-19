## Vars

* admin_user_name: User's name
* admin_user_uid: User's uid
* admin_user_public_keys: public keys to install for this user
* admin_user_private_keys: local paths to private keys to install

## Example usage

    - hosts: production
      become: yes
      roles:
        - role: admin_user
          admin_user_name: "{{app_name}}"
          admin_user_uid: 12313
          admin_user_public_keys: "{{pub_keys}}"
          admin_user_private_keys: "{{priv_keys}}"
