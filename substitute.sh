#!/bin/bash
#cd $(dirname $0)

find . -type f  | while read a; do
    originalfile=$a
    tmpfile=$(mktemp)
    cp --attributes-only --preserve $originalfile $tmpfile
    cat $originalfile | envsubst > $tmpfile && mv $tmpfile $originalfile
done

kustomize build .
