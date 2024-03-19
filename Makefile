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
		"emacs --batch --script elisp/foo.el" \
		"guile guile/foo.scm" \
		"clojure -M clojure/foo.clj" \
		"java -cp javaclass/ Foo" \
		"java java/Foo.java" \
		"kotlin kotlin/Foo.main.kts" \
		"kotlin -cp kotlinclass/ FooKt" \
		"lua lua/foo.lua" \
		"node nodejs/foo.js" \
		"nvim -l lua/foo.lua" \
		"nu nushell/foo.nu" \
		"python3 python/foo.py" \
		"ruby ruby/foo.rb" \
		"rust/foo" \
		"zsh zsh/foo" \
