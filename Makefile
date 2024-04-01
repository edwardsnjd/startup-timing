.PHONY: all
all: build run

.PHONY: clean
clean:
	git clean -xdf

.PHONY: build
build:
	(cd c/ ; gcc -o foo foo.c )
	(cd cpp/ ; g++ -o foo foo.cpp )
	(cd go/ ; go build foo.go )
	(cd haskell/ ; ghc foo.hs )
	(cd java/ ; javac Foo.java )
	(cd kotlin/ ; kotlinc Foo.kt )
	(cd ocaml/ ; ocamlc -o foo foo.ml )
	(cd rust/ ; rustc foo.rs )

.PHONY: run
run:
	hyperfine \
		--warmup 2 \
		--shell=none \
		--export-markdown="summary.md" \
		--sort="mean-time" \
		"bash bash/foo" \
		"c/foo" \
		"clojure -M clojure/foo.clj" \
		"cpp/foo" \
		"emacs --batch --script elisp/foo.el" \
		"escript erlang/foo.erl" \
		"go run go/foo.go" \
		"go/foo" \
		"guile guile/foo.scm" \
		"haskell/foo" \
		"java -cp java/ Foo" \
		"java java/Foo.java" \
		"kotlin -cp kotlin/ FooKt" \
		"kotlin kotlin/Foo.main.kts" \
		"lua lua/foo.lua" \
		"node nodejs/foo.js" \
		"nu nushell/foo.nu" \
		"nvim -l lua/foo.lua" \
		"ocaml/foo" \
		"ocaml ocaml/foo.ml" \
		"python3 python/foo.py" \
		"ruby ruby/foo.rb" \
		"rust/foo" \
		"zsh zsh/foo" \
