startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.4 | 1.8 | 4.9 | 1.00 |
| `rust/foo` | 2.7 ± 0.5 | 2.2 | 7.7 | 1.25 ± 0.32 |
| `lua lua/foo.lua` | 3.3 ± 0.7 | 2.6 | 6.7 | 1.53 ± 0.41 |
| `go/foo` | 3.9 ± 0.7 | 3.2 | 6.9 | 1.82 ± 0.44 |
| `ocaml/foo` | 4.4 ± 0.7 | 3.7 | 7.7 | 2.07 ± 0.47 |
| `bash bash/foo` | 4.7 ± 0.7 | 3.9 | 9.2 | 2.20 ± 0.49 |
| `zsh zsh/foo` | 7.0 ± 0.9 | 5.8 | 10.9 | 3.30 ± 0.72 |
| `nvim -l lua/foo.lua` | 14.2 ± 1.4 | 12.3 | 20.5 | 6.66 ± 1.32 |
| `guile guile/foo.scm` | 19.9 ± 1.7 | 17.4 | 26.6 | 9.37 ± 1.81 |
| `haskell/foo` | 20.1 ± 2.1 | 14.7 | 25.9 | 9.45 ± 1.91 |
| `ocaml ocaml/foo.ml` | 28.5 ± 1.3 | 25.8 | 32.5 | 13.39 ± 2.41 |
| `emacs --batch --script elisp/foo.el` | 33.4 ± 2.1 | 30.3 | 41.0 | 15.73 ± 2.90 |
| `python3 python/foo.py` | 38.9 ± 2.0 | 34.2 | 46.9 | 18.32 ± 3.32 |
| `nu nushell/foo.nu` | 52.5 ± 2.5 | 49.2 | 60.4 | 24.69 ± 4.44 |
| `node nodejs/foo.js` | 56.8 ± 2.4 | 52.4 | 62.3 | 26.69 ± 4.77 |
| `ruby ruby/foo.rb` | 66.0 ± 2.2 | 60.9 | 72.2 | 31.05 ± 5.49 |
| `java -cp java/ Foo` | 72.2 ± 2.2 | 68.0 | 76.7 | 33.94 ± 5.98 |
| `kotlin -cp kotlin/ FooKt` | 237.1 ± 3.3 | 232.9 | 244.6 | 111.53 ± 19.42 |
| `go run go/foo.go` | 367.5 ± 98.8 | 311.0 | 575.1 | 172.84 ± 55.31 |
| `java java/Foo.java` | 534.3 ± 9.7 | 518.4 | 547.1 | 251.33 ± 43.87 |
| `clojure -M clojure/foo.clj` | 761.0 ± 6.8 | 749.3 | 773.5 | 357.92 ± 62.22 |
| `kotlin kotlin/Foo.main.kts` | 1437.2 ± 40.9 | 1412.4 | 1546.4 | 675.99 ± 118.91 |

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
