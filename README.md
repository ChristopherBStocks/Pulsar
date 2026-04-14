# Pulsar
[LICENSE](./LICENSE.md) | [CONTRIBUTING](./CONTRIBUTING.md)

> An assortment of Ansible collections providing reusable roles for common automation tasks.

## Prerequisites

For best compatability and performance, use **NixOS >= 25.11** or **Nix** package manager with flakes enabled.

 If you cannot use Nix, ensure you have the following installed (compatibility may vary):

<details>
<summary>Manual installation (without Nix)</summary>

- **Ansible** >= 2.19.4 - [install](https://docs.ansible.com)
  - **Ansible Lint** >= 25.8.2 - [install](https://docs.ansible.com)
- **yamllint** >= 1.37.1 - [install](https://github.com/adrienverge/yamllint)
- **Just** >= 1.43.1 - [install](https://just.systems/)
- **Git-Cliff** >= 2.10.1 - [install](https://git-cliff.org/)

</details>

## Installation

For installation into an Ansible project, run:

```
ansible-galaxy collection install christopherbstocks.pulsar_<category>
```

## Usage

```yaml
---
- hosts: all
  collections:
    - christopherbstocks.pulsar_<category>
  roles:
    - christopherbstocks.pulsar_<category>.<role_name>
```