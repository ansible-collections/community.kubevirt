# KubeVirt Collection for Ansible
<!-- Add CI and code coverage badges here. Samples included below. -->
[![CI](https://github.com/ansible-collections/community.kubevirt/workflows/CI/badge.svg?event=push)](https://github.com/ansible-collections/community.kubevirt/actions) [![Codecov](https://img.shields.io/codecov/c/github/ansible-collections/community.kubevirt)](https://codecov.io/gh/ansible-collections/community.kubevirt)

<!-- Describe the collection and why a user would want to use it. What does the collection do? -->

This repo hosts the `community.kubevirt` Ansible Collection which is a part of the Ansible package.

The collection includes a variety of Ansible content to automate the management of KubeVirt container native virtualization environments.

## Code of Conduct

We follow the [Ansible Code of Conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html) in all our interactions within this project.

If you encounter abusive behavior violating the [Ansible Code of Conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html), please refer to the [policy violations](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html#policy-violations) section of the Code of Conduct for information on how to raise a complaint.

## Contributing to this collection

The content of this collection is made by people like you, a community of individuals collaborating on making the world better through developing automation software.

We are actively accepting new contributors.

Any kinds of contributions are very welcome.

You don't know how to start? Refer to our [Contribution guide](https://github.com/ansible-collections/community.kubevirt/blob/main/CONTRIBUTING.md)!

To learn more about ways of how you can contribe to Ansible and what you can achieve, refer to the [Contributing to the Project](https://github.com/ansible/community-docs/blob/main/contribution_to_project.rst) guidelines and the [Contributor Path](https://github.com/ansible/community-docs/blob/main/contributor_path.rst).

## Collection maintenance

The current maintainers (contributors with `write`or higher access) are listed in the [MAINTAINERS](https://github.com/ansible-collections/community.kubevirt/blob/main/MAINTAINERS) file. If you have questions or need help, feel free to mention them in the proposals.

To learn how to maintain / become a maintainer of this collection, refer to the [Maintainer guidelines](https://github.com/ansible-collections/community.kubevirt/blob/main/MAINTAINING.md).

It is necessary for maintainers of this collection to be subscribed to:

* The collection itself (the `Watch` button -> `All Activity` in the upper right corner of the repository's homepage).
* The "Changes Impacting Collection Contributors and Maintainers" [issue](https://github.com/ansible-collections/overview/issues/45).

They also should be subscribed to Ansible's [The Bullhorn newsletter](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn).

## Releasing the collection

We release the collection using the [Collection releasing guidelines](https://github.com/ansible/community-docs/blob/main/releasing_collections.rst).

The collection follows the [Semantic Versioning](https://semver.org/).

See the [changelog](https://github.com/ansible-collections/community.kubevirt/tree/main/CHANGELOG.rst).

## Communication

We announce releases and important changes through Ansible's [The Bullhorn newsletter](https://eepurl.com/gZmiEP). Be sure you are subscribed.

Join us in the `#ansible` (general use questions and support), `#ansible-community` (community and collection development questions), and other [IRC channels](https://docs.ansible.com/ansible/devel/community/communication.html#irc-channels) on [Libera.Chat](https://libera.chat).

We take part in the global quarterly [Ansible Contributor Summit](https://github.com/ansible/community/wiki/Contributor-Summit) virtually or in-person. Track [The Bullhorn newsletter](https://eepurl.com/gZmiEP) and join us.

For more information about communication, refer to the [Ansible Communication guide](https://docs.ansible.com/ansible/devel/community/communication.html).

## Governance

The process of decision making in this collection is based on discussing and finding consensus among participants.

Every voice is important and every idea is valuable. If you have something on your mind, create an issue or dedicated discussion and let's discuss it!

## External requirements

- python >= 2.7
- openshift >= 0.8.2

##  Included Content

**Modules**:

- kubevirt_cdi_upload: Upload local VM images to CDI Upload Proxy.
- kubevirt_preset: Manage KubeVirt virtual machine presets.
- kubevirt_pvc: Manage PVCs on Kubernetes.
- kubevirt_rs: Manage KubeVirt virtual machine replica sets.
- kubevirt_template: Manage KubeVirt templates.
- kubevirt_vm: Manage KubeVirt virtual machine.

**Plugins**:

- kubevirt: KubeVirt inventory source.

## Using this collection

### Checking the Collection version

To check if the collection is installed on your system and its current version, run the following command:

```bash
ansible-galaxy collection list community.kubevirt
```

### Installing the Collection from Ansible Galaxy

Before using the kubevirt collection, you need to install it with the Ansible Galaxy CLI:

```bash
ansible-galaxy collection install community.kubevirt
```

You can also include it in a `requirements.yml` file and install it via `ansible-galaxy collection install -r requirements.yml`, using the format:

```yaml
---
collections:
  - name: community.kubevirt
```

Note that if you install the collection from Ansible Galaxy, it will not be upgraded automatically if you upgrade the Ansible package. To upgrade the collection to the latest available version, run the following command:

```bash
ansible-galaxy collection install community.kubevirt --upgrade
```

You can also install a specific version of the collection, for example, if you need to downgrade when something is broken in the latest version (please report an issue in this repository). Use the following syntax:

```bash
ansible-galaxy collection install community.kubevirt:==1.0.0
```
See [Ansible Using collections](https://docs.ansible.com/ansible/latest/user_guide/collections_using.html) for more details.

### Installing the Collection with the Ansible package

Because the collection is shipped with Ansible, if you install the ``ansible`` package, the collection will be installed authomatically.

If you install the ``ansible-core`` package, you will need to intall the collection manually. Refer to the paragraph above.

## More information

For more information about Ansible's Kubernetes integration, join the `#ansible-kubernetes` IRC channel on [irc.libera.chat](https://libera.chat/), and browse the resources in the [Kubernetes Working Group](https://github.com/ansible/community/wiki/Kubernetes) Community wiki page.

- [Ansible Collection overview](https://github.com/ansible-collections/overview)
- [Ansible User guide](https://docs.ansible.com/ansible/latest/user_guide/index.html)
- [Ansible Developer guide](https://docs.ansible.com/ansible/latest/dev_guide/index.html)
- [Ansible Collections Checklist](https://github.com/ansible-collections/overview/blob/master/collection_requirements.rst)
- [Ansible Community code of conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html)
- [The Bullhorn (the Ansible Contributor newsletter)](https://us19.campaign-archive.com/home/?u=56d874e027110e35dea0e03c1&id=d6635f5420)
- [Changes impacting Contributors](https://github.com/ansible-collections/overview/issues/45)

## Licensing

GNU General Public License v3.0 or later.

See [LICENSE](https://www.gnu.org/licenses/gpl-3.0.txt) to see the full text.
