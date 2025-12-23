#!/bin/bash

mkdir -p include-bak
for file in ./confs/*.conf; do
	.  $file; rm -f .include .configured; make .include; cp include/config_customer include-bak/${PJ_NAME}.h
done

