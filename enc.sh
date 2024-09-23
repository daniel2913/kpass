#!/bin/bash

openssl enc -camellia-256-cbc	-pbkdf2 -iter $ITER -in $1     -out ._tmp1 	-pass pass:$(pass show camellia)
openssl enc -aria-256-cbc			-pbkdf2 -iter $ITER -in ._tmp1 -out ._tmp2 	-pass pass:$(pass show aria)
openssl enc -aes-256-cbc			-pbkdf2 -iter $ITER -in ._tmp2 -out $2			-pass pass:$(pass show aes)
rm ._tmp1 ._tmp2
