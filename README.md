startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.4 | 1.8 | 4.7 | 1.00 |
| `cpp/foo` | 2.3 ± 0.4 | 1.9 | 4.6 | 1.09 ± 0.28 |
| `swift/foo` | 2.5 ± 0.4 | 2.0 | 5.3 | 1.16 ± 0.29 |
| `rust/foo` | 2.6 ± 0.4 | 2.2 | 4.8 | 1.23 ± 0.28 |
| `lua lua/foo.lua` | 3.3 ± 0.5 | 2.6 | 6.3 | 1.53 ± 0.36 |
| `go/foo` | 3.8 ± 0.5 | 3.2 | 6.6 | 1.78 ± 0.40 |
| `ocaml/foo` | 4.4 ± 0.5 | 3.6 | 6.9 | 2.08 ± 0.44 |
| `bash bash/foo` | 4.7 ± 0.7 | 3.9 | 10.2 | 2.20 ± 0.50 |
| `zsh zsh/foo` | 7.1 ± 0.9 | 5.9 | 11.3 | 3.33 ± 0.72 |
| `nvim -l lua/foo.lua` | 14.3 ± 1.5 | 12.3 | 21.9 | 6.72 ± 1.36 |
| `guile guile/foo.scm` | 20.2 ± 1.9 | 17.1 | 25.5 | 9.48 ± 1.87 |
| `haskell/foo` | 20.2 ± 1.9 | 15.4 | 26.7 | 9.49 ± 1.88 |
| `ocaml ocaml/foo.ml` | 28.3 ± 1.7 | 25.0 | 35.8 | 13.26 ± 2.45 |
| `emacs --batch --script elisp/foo.el` | 32.5 ± 2.0 | 29.6 | 40.6 | 15.27 ± 2.82 |
| `python3 python/foo.py` | 38.9 ± 2.5 | 34.1 | 45.5 | 18.24 ± 3.39 |
| `nu nushell/foo.nu` | 49.7 ± 2.3 | 44.2 | 55.7 | 23.33 ± 4.22 |
| `node nodejs/foo.js` | 55.5 ± 2.3 | 51.8 | 65.5 | 26.05 ± 4.68 |
| `ruby ruby/foo.rb` | 65.6 ± 2.4 | 61.2 | 73.7 | 30.80 ± 5.50 |
| `dotnet fsharp/bin/Debug/net8.0/fsharp.dll` | 67.3 ± 2.8 | 63.0 | 76.8 | 31.59 ± 5.67 |
| `java -cp java/ Foo` | 72.5 ± 3.2 | 67.9 | 82.2 | 34.03 ± 6.12 |
| `escript erlang/foo.erl` | 158.6 ± 2.4 | 154.3 | 164.9 | 74.41 ± 13.04 |
| `swift swift/foo.swift` | 183.8 ± 4.7 | 178.1 | 196.2 | 86.24 ± 15.22 |
| `kotlin -cp kotlin/ FooKt` | 233.7 ± 4.3 | 227.7 | 240.1 | 109.64 ± 19.25 |
| `go run go/foo.go` | 303.1 ± 5.7 | 295.4 | 314.6 | 142.19 ± 24.97 |
| `java java/Foo.java` | 532.5 ± 8.7 | 516.2 | 541.7 | 249.83 ± 43.81 |
| `clojure -M clojure/foo.clj` | 768.8 ± 7.0 | 757.6 | 782.3 | 360.70 ± 63.07 |
| `dotnet fsi fsharpx/Foo.fsx` | 1338.1 ± 26.7 | 1311.1 | 1404.0 | 627.81 ± 110.33 |
| `kotlin kotlin/Foo.main.kts` | 1382.2 ± 20.6 | 1353.9 | 1422.7 | 648.54 ± 113.65 |

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
  - `dotnet`
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
