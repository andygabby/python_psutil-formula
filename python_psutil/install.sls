# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "python_psutil/map.jinja" import python_psutil with context %}

python_psutil-pkg:
  pkg.installed:
    - name: {{ python_psutil.pkg }}
{% if grains['os_family'] == 'RedHat' %}
    - fromrepo: 'epel'
{% endif %}

