#!/bin/bash

jq '.[] | select(if .tags | type == "array" then (.tags[] == "philosophy" or .tags[] == "cosmology") else false end) | "\(.title) by \(.author)"' library.json