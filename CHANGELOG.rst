================================
community.kubevirt Release Notes
================================

.. contents:: Topics


v1.1.0
======

Release Summary
---------------

-| This collection is unmaintained and does not work correctly with the latest versions of Ansible! Take a look if replacing with collection kubevirt.core provides the functionality you need. If you're interested in fixing and maintaining community.kubevirt please step up, but we highly recommend you to consider contributing to kubevirt.core instead.

Minor Changes
-------------

- Add upper bound to the community.kubernetes dependency (https://github.com/ansible-collections/community.kubevirt/pull/26).

Bugfixes
--------

- kubevirt_vm - Adds missing ``storageClassName`` and ``volumeMode`` parameters to datavol class (https://github.com/ansible-collections/community.kubevirt/issues/12)
- kubevirt_vm - Create datavol before cloudinit disk as its more likely to be a boot volume (https://github.com/ansible-collections/community.kubevirt/pull/20)

v1.0.0
======

Release Summary
---------------

This is the first stable release version of community.kubevirt.

v0.1.0
======

Release Summary
---------------

This is the first pre-release version of community.kubevirt after migrating from community.general.

Bugfixes
--------

- kubevirt - Add aliases 'interface_name' for network_name (https://github.com/ansible/ansible/issues/55641).
