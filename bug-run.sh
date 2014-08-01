#!/bin/bash

vagrant destroy -f
vagrant up
vagrant provision
vagrant reload host1
vagrant provision
