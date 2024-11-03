ITER = 1000000
export ITER
update:
	./enc.sh db.kdbx db.bin
pass_decode:
	./dec.sh db.bin db.kdbx
stdin_decode:
	./dec_stdin.sh db.bin db.kdbx
