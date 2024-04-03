startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.2 | 1.8 | 4.5 | 1.00 |
| `cpp/foo` | 2.1 ± 0.2 | 1.9 | 3.0 | 1.04 ± 0.13 |
| `swift/foo` | 2.3 ± 0.2 | 2.0 | 3.9 | 1.14 ± 0.14 |
| `rust/foo` | 2.6 ± 0.2 | 2.2 | 4.2 | 1.25 ± 0.16 |
| `lua lua/foo.lua` | 3.0 ± 0.2 | 2.6 | 4.8 | 1.45 ± 0.18 |
| `go/foo` | 3.7 ± 0.3 | 3.2 | 6.1 | 1.82 ± 0.23 |
| `fortran/foo` | 3.9 ± 0.3 | 3.4 | 6.0 | 1.88 ± 0.22 |
| `ocaml/foo` | 4.5 ± 0.7 | 3.7 | 11.6 | 2.18 ± 0.41 |
| `bash bash/foo` | 4.5 ± 0.3 | 4.0 | 6.3 | 2.19 ± 0.25 |
| `zsh zsh/foo` | 6.6 ± 0.3 | 5.9 | 8.6 | 3.20 ± 0.34 |
| `cobol/foo` | 7.2 ± 0.4 | 6.5 | 10.1 | 3.50 ± 0.38 |
| `nvim -l lua/foo.lua` | 13.8 ± 2.0 | 12.5 | 40.2 | 6.74 ± 1.16 |
| `haskell/foo` | 19.4 ± 2.0 | 15.3 | 24.7 | 9.44 ± 1.32 |
| `guile guile/foo.scm` | 19.4 ± 1.0 | 17.8 | 23.4 | 9.44 ± 1.00 |
| `ocaml ocaml/foo.ml` | 28.2 ± 0.9 | 26.2 | 31.1 | 13.74 ± 1.34 |
| `emacs --batch --script elisp/foo.el` | 31.9 ± 1.1 | 30.2 | 35.0 | 15.55 ± 1.52 |
| `python3 python/foo.py` | 37.5 ± 1.2 | 34.9 | 40.2 | 18.25 ± 1.78 |
| `nu nushell/foo.nu` | 48.8 ± 1.2 | 45.6 | 51.7 | 23.77 ± 2.27 |
| `dotnet csharp/bin/Debug/net8.0/csharp.dll` | 52.6 ± 1.5 | 49.7 | 57.4 | 25.64 ± 2.48 |
| `node nodejs/foo.js` | 55.0 ± 1.7 | 52.4 | 59.8 | 26.81 ± 2.61 |
| `dotnet fsharp/bin/Debug/net8.0/fsharp.dll` | 65.7 ± 1.6 | 62.4 | 70.3 | 32.01 ± 3.05 |
| `ruby ruby/foo.rb` | 66.2 ± 2.5 | 63.7 | 77.2 | 32.25 ± 3.22 |
| `java -cp java/ Foo` | 69.6 ± 2.0 | 66.7 | 75.6 | 33.93 ± 3.28 |
| `escript erlang/foo.erl` | 158.2 ± 2.3 | 154.7 | 162.7 | 77.07 ± 7.19 |
| `swift swift/foo.swift` | 176.8 ± 5.3 | 171.1 | 193.4 | 86.12 ± 8.36 |
| `kotlin -cp kotlin/ FooKt` | 234.6 ± 3.0 | 229.9 | 240.6 | 114.30 ± 10.64 |
| `go run go/foo.go` | 327.6 ± 19.4 | 307.5 | 362.5 | 159.56 ± 17.49 |
| `java java/Foo.java` | 520.5 ± 4.7 | 515.2 | 528.2 | 253.56 ± 23.50 |
| `clojure -M clojure/foo.clj` | 763.1 ± 7.8 | 748.3 | 774.9 | 371.71 ± 34.49 |
| `kotlin kotlin/Foo.main.kts` | 1380.8 ± 28.7 | 1352.5 | 1458.3 | 672.61 ± 63.59 |
| `dotnet fsi fsharpx/Foo.fsx` | 1384.9 ± 19.8 | 1368.6 | 1433.6 | 674.58 ± 62.95 |

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
  - `cobc`
  - `dotnet`
  - `g++`
  - `gcc`
  - `gfortran`
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
