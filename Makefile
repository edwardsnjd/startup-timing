.PHONY: all
all: build run

.PHONY: clean
clean:
	git clean -xdf

.PHONY: build
build:
	(cd c/ ; gcc -o foo foo.c )
	(cd javaclass/ ; javac Foo.java )
	(cd kotlinclass/ ; kotlinc Foo.kt )
	(cd goclass/ ; go build foo.go )
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
		"emacs --batch --script elisp/foo.el" \
		"go run go/foo.go" \
		"goclass/foo" \
		"guile guile/foo.scm" \
		"java -cp javaclass/ Foo" \
		"java java/Foo.java" \
		"kotlin -cp kotlinclass/ FooKt" \
		"kotlin kotlin/Foo.main.kts" \
		"lua lua/foo.lua" \
		"node nodejs/foo.js" \
		"nu nushell/foo.nu" \
		"nvim -l lua/foo.lua" \
		"python3 python/foo.py" \
		"ruby ruby/foo.rb" \
		"rust/foo" \
		"zsh zsh/foo" \
