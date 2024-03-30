startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

Usage
-----

Ensure you have the dependencies installed and available on your `PATH`:

- Tooling
  - `make`
  - `hyperfine`
- Shells
    - `bash`, `zsh`, and `nu` (nushell)
- Interpreters
  - `lua`
  - `node`
  - `python3`
  - `ruby`
  - `emacs`
  - `nvim`
  - `guile`
  - `go`
- Compilers
  - `gcc`
  - `rustc`
  - `javac`
  - `kotlinc`
  - `go`
- JVM
  - `java`
  - `clojure`
  - `kotlin`

Then compile and run the benchmarks:

```bash
make
```

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.4 | 1.8 | 4.0 | 1.00 |
| `rust/foo` | 2.6 ± 0.4 | 2.2 | 5.5 | 1.22 ± 0.31 |
| `lua lua/foo.lua` | 3.2 ± 0.6 | 2.6 | 10.9 | 1.49 ± 0.41 |
| `goclass/foo` | 3.8 ± 0.6 | 3.1 | 8.3 | 1.76 ± 0.44 |
| `ocaml/foo` | 4.4 ± 0.6 | 3.6 | 7.5 | 2.03 ± 0.47 |
| `bash bash/foo` | 4.6 ± 0.6 | 3.8 | 8.6 | 2.15 ± 0.49 |
| `zsh zsh/foo` | 6.9 ± 0.9 | 5.8 | 11.1 | 3.22 ± 0.71 |
| `nvim -l lua/foo.lua` | 14.3 ± 1.5 | 12.2 | 21.0 | 6.70 ± 1.41 |
| `guile guile/foo.scm` | 19.7 ± 1.5 | 17.1 | 24.3 | 9.22 ± 1.82 |
| `haskell/foo` | 20.3 ± 2.0 | 15.9 | 26.2 | 9.47 ± 1.97 |
| `ocaml ocaml/foo.ml` | 28.3 ± 1.4 | 25.5 | 32.4 | 13.20 ± 2.49 |
| `emacs --batch --script elisp/foo.el` | 33.0 ± 1.7 | 30.0 | 38.2 | 15.42 ± 2.93 |
| `python3 python/foo.py` | 38.7 ± 2.3 | 34.4 | 45.2 | 18.08 ± 3.47 |
| `nu nushell/foo.nu` | 52.5 ± 2.7 | 47.8 | 63.8 | 24.54 ± 4.65 |
| `node nodejs/foo.js` | 55.7 ± 2.0 | 50.8 | 60.2 | 26.00 ± 4.83 |
| `ruby ruby/foo.rb` | 65.6 ± 2.2 | 61.6 | 71.9 | 30.62 ± 5.68 |
| `java -cp javaclass/ Foo` | 72.1 ± 2.2 | 68.2 | 77.4 | 33.69 ± 6.23 |
| `kotlin -cp kotlinclass/ FooKt` | 235.3 ± 3.0 | 230.8 | 239.5 | 109.87 ± 20.09 |
| `go run go/foo.go` | 343.7 ± 115.9 | 296.3 | 672.7 | 160.50 ± 61.54 |
| `java java/Foo.java` | 525.7 ± 10.3 | 514.3 | 542.0 | 245.52 ± 45.04 |
| `clojure -M clojure/foo.clj` | 766.5 ± 6.3 | 754.8 | 774.8 | 357.95 ± 65.36 |
| `kotlin kotlin/Foo.main.kts` | 1413.8 ± 19.3 | 1383.9 | 1442.6 | 660.26 ± 120.77 |
