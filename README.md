# CFEngine

The CFEngine ansible role installs [CFEngine](https://cfengine.com) on a host using [cf-remote](https://pypi.org/project/cf-remote/) and optionally bootstraps it to a Hub.

## Requirements

This role requires pip in the Ansible control node.

## Role Variables

|Name|Desecription|Required|Default value|
|-|-|-|-|
|`version`|CFEngine version to install|No|Latest available version|
|`edition`|CFEngine edition (`community` or `enterprise`)|No|`community`|
|`package`|Package to install (`client` or `hub`)|No|`client`|
|`bootstrap`|If set, bootstraps CFEngine from the provided host|No|`""`|
|`trust_keys`|Comma-separated paths to the keys the hosts should trust|No|`""`|

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: "cfengine.cfengine"
          version: 3.17.0
          edition: "enterprise"
          bootstrap: "10.0.0.1"

## Contributing

Please see the [CONTRIBUTING.md](https://github.com/cfengine/core/blob/master/CONTRIBUTING.md) file.

## Authors

CFEngine was originally created by Mark Burgess with many contributions from
around the world. Thanks [everyone](https://github.com/cfengine/core/blob/master/AUTHORS)!

[CFEngine](https://cfengine.com) is sponsored by [Northern.tech AS](https://northern.tech)

## Licensing

GNU General Public License v3.0 or later.

See [LICENSE](https://www.gnu.org/licenses/gpl-3.0.txt) to see the full text.
