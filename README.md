startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.2 ± 0.3 | 1.8 | 3.8 | 1.00 |
| `cpp/foo` | 2.3 ± 0.3 | 1.9 | 3.9 | 1.05 ± 0.22 |
| `swift/foo` | 2.4 ± 0.4 | 2.0 | 4.8 | 1.13 ± 0.25 |
| `rust/foo` | 2.6 ± 0.3 | 2.2 | 4.3 | 1.20 ± 0.24 |
| `lua lua/foo.lua` | 3.3 ± 1.2 | 2.6 | 25.3 | 1.55 ± 0.61 |
| `go/foo` | 3.8 ± 0.5 | 3.1 | 7.2 | 1.74 ± 0.36 |
| `ocaml/foo` | 4.3 ± 0.4 | 3.6 | 7.1 | 2.01 ± 0.38 |
| `bash bash/foo` | 4.7 ± 0.6 | 3.9 | 9.0 | 2.17 ± 0.43 |
| `zsh zsh/foo` | 6.8 ± 0.6 | 5.8 | 9.0 | 3.15 ± 0.58 |
| `nvim -l lua/foo.lua` | 14.1 ± 1.2 | 11.9 | 19.4 | 6.55 ± 1.18 |
| `haskell/foo` | 18.0 ± 1.3 | 14.8 | 21.6 | 8.34 ± 1.45 |
| `guile guile/foo.scm` | 20.2 ± 1.6 | 17.3 | 25.4 | 9.39 ± 1.66 |
| `ocaml ocaml/foo.ml` | 27.7 ± 1.1 | 25.1 | 31.4 | 12.84 ± 2.10 |
| `emacs --batch --script elisp/foo.el` | 31.8 ± 1.4 | 28.4 | 35.5 | 14.74 ± 2.42 |
| `python3 python/foo.py` | 38.1 ± 2.1 | 33.6 | 47.1 | 17.67 ± 2.97 |
| `nu nushell/foo.nu` | 50.6 ± 2.7 | 46.3 | 60.6 | 23.47 ± 3.92 |
| `node nodejs/foo.js` | 55.8 ± 5.8 | 51.1 | 92.7 | 25.89 ± 4.91 |
| `ruby ruby/foo.rb` | 66.9 ± 2.3 | 61.9 | 71.4 | 31.04 ± 5.03 |
| `java -cp java/ Foo` | 71.5 ± 3.0 | 66.2 | 83.7 | 33.18 ± 5.43 |
| `escript erlang/foo.erl` | 158.7 ± 2.2 | 155.4 | 163.6 | 73.68 ± 11.71 |
| `swift swift/foo.swift` | 195.3 ± 3.7 | 189.4 | 202.0 | 90.68 ± 14.45 |
| `kotlin -cp kotlin/ FooKt` | 230.8 ± 2.7 | 226.3 | 237.1 | 107.13 ± 17.00 |
| `go run go/foo.go` | 315.8 ± 26.1 | 302.3 | 388.7 | 146.61 ± 26.18 |
| `java java/Foo.java` | 560.8 ± 41.0 | 521.4 | 654.2 | 260.33 ± 45.39 |
| `clojure -M clojure/foo.clj` | 772.2 ± 7.0 | 759.4 | 786.0 | 358.44 ± 56.83 |
| `kotlin kotlin/Foo.main.kts` | 1401.7 ± 32.1 | 1356.9 | 1457.6 | 650.62 ± 104.06 |

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
  - `swift`
- Compilers
  - `g++`
  - `gcc`
  - `ghc`
  - `go`
  - `javac`
  - `kotlinc`
  - `ocamlc`
  - `rustc`
  - `swiftc`
- JVM
  - `java`
  - `clojure`
  - `kotlin`

Then compile and run the benchmarks:

```bash
make
```
