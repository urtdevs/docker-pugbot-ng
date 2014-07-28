#!/usr/bin/env python
import sys
from pkg_resources import load_entry_point

load_entry_point('pugbot-ng==0.0.3', 'console_scripts', 'pugbot_ng')()
