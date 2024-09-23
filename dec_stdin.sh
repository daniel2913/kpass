#!/bin/bash

openssl	enc	-d	-aes-256-cbc 			-pbkdf2 -iter $ITER -in $1 			-out ._tmp1	-pass stdin
openssl	enc	-d 	-aria-256-cbc  		-pbkdf2 -iter $ITER -in ._tmp1 	-out ._tmp2	-pass stdin
openssl	enc	-d 	-camellia-256-cbc -pbkdf2 -iter $ITER -in ._tmp2	-out $2 		-pass stdin
rm ._tmp1 ._tmp2
