#!/bin/bash

x=mississipi

grep -o "i" <<< "$x" | wc -l 