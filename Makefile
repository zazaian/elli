compile:
	./rebar compile
	./rebar xref skip_deps=true

init_dialyzer:
	dialyzer --apps stdlib kernel erts crypto --build_plt --output_plt .dialyzer.plt

dialyzer: compile
	dialyzer --no_native -Wno_return -r ebin --plt .dialyzer.plt
