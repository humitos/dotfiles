#!/bin/env python

import json
import os
import subprocess
import sys

if not os.environ.get('BW_SESSION'):
    print('ERROR: "BW_SESSION" environment variable is not set.')
    sys.exit(1)

keys = {
    '.ssh/id_github': 'cd52c7df-f419-41de-85f3-ab5f0117a21b',
    '.ssh/id_gitlab': 'd5635d3c-c5a8-4273-81f2-adc401014e25',
    '.ssh/id_rtfdcom': '0f5f8a65-0dbb-42d3-b622-abdd00bc0069',
    '.ssh/id_rtfdorg': '47dbe588-d4bc-4b75-81e7-abdd00bbe640',
    '.ssh/id_readthedocscom': '80aadf12-b796-4494-a742-ab5f0117a21b',
    '.ssh/id_readthedocsorg': '8c883d01-ce20-4742-90ff-ab5f0117a21b',
}

if len(sys.argv) != 2:
    print('ERROR: text prompted argument not received.')
    sys.exit(1)

for k in keys.keys():
    # First argument is the name of the program and the second argument is the text prompted
    # /home/humitos/bin/keypass-bitwarden.py "Enter passphrase for .ssh/id_rtfdcom:"
    if k in sys.argv[1]:
        key = keys.get(k)
        break

output = subprocess.run(f'/usr/bin/bw get item {key}'.split(), capture_output=True).stdout
data = json.loads(output)

# NOTE: the Bitwarden item must have a custom field named "Passphrase"
for field in data['fields']:
    if field['name'] == 'Passphrase':
        print(field['value'])
        break
