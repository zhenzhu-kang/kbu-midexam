#!/bin/bash

jq '.[] | select(.available == true and .copies >= 2) | .title' library.json