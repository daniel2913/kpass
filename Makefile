update:
	dotenv -f .env run ./enc.sh db.kdbx db.bin
pass_decode:
	dotenv -f .env run ./dec.sh db.bin db.kdbx
stdin_decode:
	dotenv -f .env run ./dec_stdin.sh db.bin db.kdbx
