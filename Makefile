run: compile
	eval `opam config env` && ./main.byte

test: compile
	# ________________________________
	rm -rd test_build || true
	mkdir test_build
	# ________________________________
	./test.byte || true
	# ________________________________
	rm -rd test_build

compile:
	eval `opam config env` && \
	ocamlbuild -pkgs oUnit,yojson,str,lambda-term \
		main.byte test.byte \

check:
	bash checkenv.sh && bash checktypes.sh

clean:
	ocamlbuild -clean
	rm -f checktypes.ml

install-ubuntu:
	add-apt-repository ppa:avsm/ppa
	apt-get update
	apt-get install ocaml ocaml-native-compilers camlp4-extra opam
	opam init -a --comp 4.03.0
	opam switch -- 4.03.0
	eval `opam config env`
	opam install utop yojson lambda-term oUnit

install-dep:
	opam install utop yojson lambda-term oUnit
