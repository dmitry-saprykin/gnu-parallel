#!/bin/bash

seq 1 100 | parallel -j0 -qv perl -e '$r=rand(shift);for($f=0;$f<$r;$f++){$a="a"x100};print shift,"\n"' 10000 | sort
