#!/bin/sh
(tr -d '\r' < $1) > $1.___temp
mv $1.___temp $1
