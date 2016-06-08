## Vars

* user_name: User's name
* user_uid: User's uid
* user_public_keys: public keys to install for this user
* user_private_keys: local paths to private keys to install

## Example usage

    - hosts: production
      become: yes
      roles:
        - role: user
          user_name: "{{app_name}}"
          user_uid: 12313
          user_public_keys: "{{pub_keys}}"
          user_private_keys: "{{priv_keys}}"
