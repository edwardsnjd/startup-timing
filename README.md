startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.2 ± 0.4 | 1.8 | 6.7 | 1.00 |
| `rust/foo` | 2.8 ± 0.6 | 2.2 | 5.8 | 1.28 ± 0.36 |
| `lua lua/foo.lua` | 3.0 ± 0.4 | 2.6 | 6.5 | 1.40 ± 0.31 |
| `ocaml/foo` | 4.4 ± 0.5 | 3.7 | 9.4 | 2.00 ± 0.44 |
| `go/foo` | 4.4 ± 1.2 | 3.1 | 9.1 | 2.02 ± 0.65 |
| `bash bash/foo` | 5.2 ± 1.4 | 3.9 | 13.1 | 2.39 ± 0.78 |
| `zsh zsh/foo` | 8.2 ± 1.9 | 5.8 | 19.0 | 3.74 ± 1.12 |
| `nvim -l lua/foo.lua` | 14.7 ± 2.1 | 12.5 | 28.4 | 6.72 ± 1.55 |
| `haskell/foo` | 19.4 ± 1.6 | 15.6 | 24.7 | 8.90 ± 1.78 |
| `guile guile/foo.scm` | 19.8 ± 1.7 | 17.5 | 25.8 | 9.08 ± 1.82 |
| `ocaml ocaml/foo.ml` | 30.4 ± 4.1 | 26.0 | 46.3 | 13.92 ± 3.16 |
| `emacs --batch --script elisp/foo.el` | 34.0 ± 3.8 | 29.9 | 60.0 | 15.56 ± 3.33 |
| `python3 python/foo.py` | 45.4 ± 6.1 | 36.6 | 64.0 | 20.79 ± 4.70 |
| `nu nushell/foo.nu` | 51.4 ± 2.0 | 46.4 | 56.3 | 23.56 ± 4.39 |
| `node nodejs/foo.js` | 58.7 ± 7.6 | 51.1 | 87.2 | 26.88 ± 6.02 |
| `java -cp java/ Foo` | 71.1 ± 7.2 | 65.9 | 113.1 | 32.59 ± 6.79 |
| `ruby ruby/foo.rb` | 75.8 ± 5.9 | 64.3 | 87.0 | 34.72 ± 6.88 |
| `escript erlang/foo.erl` | 164.8 ± 8.0 | 153.4 | 183.7 | 75.51 ± 14.24 |
| `kotlin -cp kotlin/ FooKt` | 249.9 ± 22.5 | 224.0 | 287.4 | 114.51 ± 23.28 |
| `go run go/foo.go` | 328.2 ± 28.0 | 303.5 | 397.0 | 150.37 ± 30.25 |
| `java java/Foo.java` | 527.5 ± 12.0 | 510.8 | 545.6 | 241.72 ± 44.40 |
| `clojure -M clojure/foo.clj` | 776.3 ± 21.1 | 751.6 | 814.8 | 355.69 ± 65.55 |
| `kotlin kotlin/Foo.main.kts` | 1526.3 ± 115.6 | 1384.9 | 1735.3 | 699.32 ± 138.03 |

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
