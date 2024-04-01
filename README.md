startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.2 ± 0.4 | 1.8 | 4.9 | 1.00 |
| `cpp/foo` | 2.2 ± 0.4 | 1.9 | 5.0 | 1.03 ± 0.26 |
| `rust/foo` | 2.7 ± 0.4 | 2.2 | 7.3 | 1.24 ± 0.30 |
| `lua lua/foo.lua` | 3.2 ± 0.5 | 2.6 | 6.1 | 1.47 ± 0.37 |
| `go/foo` | 3.8 ± 0.6 | 3.2 | 6.6 | 1.77 ± 0.43 |
| `ocaml/foo` | 4.4 ± 0.5 | 3.7 | 9.0 | 2.02 ± 0.45 |
| `bash bash/foo` | 4.7 ± 0.8 | 3.9 | 10.3 | 2.19 ± 0.54 |
| `zsh zsh/foo` | 7.1 ± 1.1 | 5.9 | 11.9 | 3.30 ± 0.78 |
| `nvim -l lua/foo.lua` | 14.9 ± 2.8 | 12.3 | 37.7 | 6.90 ± 1.82 |
| `haskell/foo` | 20.0 ± 2.2 | 15.2 | 26.8 | 9.24 ± 2.00 |
| `guile guile/foo.scm` | 20.1 ± 1.6 | 17.2 | 24.8 | 9.30 ± 1.88 |
| `ocaml ocaml/foo.ml` | 28.7 ± 1.4 | 25.7 | 33.0 | 13.26 ± 2.55 |
| `emacs --batch --script elisp/foo.el` | 34.0 ± 2.1 | 30.2 | 39.6 | 15.70 ± 3.08 |
| `python3 python/foo.py` | 39.5 ± 4.8 | 35.7 | 67.1 | 18.28 ± 4.06 |
| `nu nushell/foo.nu` | 49.4 ± 1.8 | 45.0 | 53.9 | 22.84 ± 4.34 |
| `node nodejs/foo.js` | 56.2 ± 2.3 | 52.3 | 62.8 | 25.97 ± 4.95 |
| `ruby ruby/foo.rb` | 70.3 ± 4.6 | 62.6 | 86.2 | 32.52 ± 6.43 |
| `java -cp java/ Foo` | 72.2 ± 2.4 | 68.2 | 78.1 | 33.39 ± 6.33 |
| `escript erlang/foo.erl` | 159.0 ± 2.1 | 155.7 | 163.4 | 73.53 ± 13.74 |
| `kotlin -cp kotlin/ FooKt` | 235.0 ± 2.3 | 229.9 | 237.8 | 108.67 ± 20.29 |
| `go run go/foo.go` | 354.7 ± 65.5 | 302.1 | 473.4 | 164.02 ± 43.04 |
| `java java/Foo.java` | 517.5 ± 8.6 | 502.7 | 526.7 | 239.33 ± 44.80 |
| `clojure -M clojure/foo.clj` | 754.8 ± 9.2 | 739.9 | 767.6 | 349.06 ± 65.22 |
| `kotlin kotlin/Foo.main.kts` | 1458.5 ± 74.2 | 1376.6 | 1624.7 | 674.47 ± 130.35 |

Running
-------

Ensure you have the dependencies installed and available on your `PATH`:

- Tooling
  - `make`
  - `hyperfine`
- Shells
    - `bash`, `zsh`, and `nu` (nushell)
- Interpreters
  - `emacs`
  - `escript`
  - `go`
  - `guile`
  - `lua`
  - `node`
  - `nvim`
  - `ocaml`
  - `python3`
  - `ruby`
- Compilers
  - `g++`
  - `gcc`
  - `ghc`
  - `go`
  - `javac`
  - `kotlinc`
  - `ocamlc`
  - `rustc`
- JVM
  - `java`
  - `clojure`
  - `kotlin`

Then compile and run the benchmarks:

```bash
make
```
