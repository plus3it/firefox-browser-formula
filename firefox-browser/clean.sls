# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - .subcomponent.clean
  - .service.clean
  - .config.clean
{%- if grains.kernel == "Linux" %}
  - .package.lin_clean
{%- elif grains.kernel == "Windows" %}
  - .package.win_clean
{%- endif %}
