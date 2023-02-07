#!/bin/sh
(tr -d '\r' < $1) > $1._temp && mv $1._temp $1
