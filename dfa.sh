#!/bin/bash

ls mnrl | xargs -I {} basename {} | parallel --jobs 10 "./onedfa.sh {}"
