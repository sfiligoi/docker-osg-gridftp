#!/bin/bash

# finalize the config
osg-configure -c

# make sure the crls are fresh
fetch-crl

