#!/usr/bin/env python

# REQUIREMENTS:
# pip install feedparser

# This script checks if there is a newer tag than the specified in CURRENT_TAG

import sys
import smtplib
import feedparser
import urllib

from email.mime.text import MIMEText

TAGS_URL = 'http://hg.python.org/cpython/tags'
CURRENT_TAG = 'v3.4.0'
ATOM_URL = 'http://hg.python.org/cpython/atom-tags'

rss = feedparser.parse(ATOM_URL)
tags = rss['entries'][:5]


def send_mail(tag, bz2_url, rev):
    # Send an email to my account
    import conf

    text = '''Please go to {} to check it out.

        wget -c {}
        tar xvf {}.tar.bz2 -C /tmp --wildcards --no-anchored 'Doc/tutorial/*.rst'
        mv /tmp/cpython-{}/Doc/tutorial/*.rst ~/Source/tutorial/original
        cd ~/Source/tutorial
        git diff
    '''.format(TAGS_URL, bz2_url, rev)
    msg = MIMEText(text)
    msg['From'] = conf.FROMADDR
    msg['To'] = conf.TOADDRS
    subject = '[Python HG] There is a new tag: {tag}'.format(tag=tag)
    msg['Subject'] = subject

    # Credentials
    username = conf.USERNAME
    password = conf.PASSWORD

    # The actual mail send
    server = smtplib.SMTP('smtp.gmail.com:587')
    server.starttls()
    server.login(username, password)
    server.send_message(msg)
    server.quit()


if __name__ == '__main__':

    for tag in tags:
        py_version = tag.title
        bz2_url = tag.link.replace('/rev/', '/archive/') + '.tar.bz2'
        rev = bz2_url.split('/')[-1].split('.')[0]

        major, minor, rest = py_version.split('.')

        if major != 'v3':
            continue

        current_major, current_minor, current_rest = CURRENT_TAG.split('.')
        if int(minor) > int(current_minor):
            print('A new tag of Python is available "{}" at {}' \
                  .format(py_version, bz2_url))

            if '--email' in sys.argv:
                send_mail(py_version, bz2_url, rev)
        elif int(minor) == int(current_minor):
            if rest != current_rest:
                print('Check yourself! It would be awesome that ' \
                      'distutils.version handle this problem')
                print('Your version: {} Published version: {}' \
                      .format(CURRENT_TAG, py_version))
