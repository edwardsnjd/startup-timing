startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.3 | 1.8 | 9.4 | 1.00 |
| `cpp/foo` | 2.3 ± 0.3 | 1.9 | 5.3 | 1.07 ± 0.21 |
| `swift/foo` | 2.5 ± 0.3 | 2.1 | 4.7 | 1.17 ± 0.23 |
| `rust/foo` | 2.6 ± 0.3 | 2.2 | 5.9 | 1.24 ± 0.25 |
| `lua lua/foo.lua` | 3.7 ± 1.5 | 2.6 | 17.3 | 1.72 ± 0.74 |
| `go/foo` | 3.7 ± 0.3 | 3.2 | 6.3 | 1.74 ± 0.31 |
| `fortran/foo` | 4.0 ± 0.5 | 3.4 | 11.5 | 1.88 ± 0.37 |
| `ocaml/foo` | 4.3 ± 0.3 | 3.7 | 5.8 | 2.03 ± 0.35 |
| `bash bash/foo` | 4.7 ± 0.8 | 4.0 | 16.5 | 2.21 ± 0.50 |
| `perl perl/foo.pl` | 5.5 ± 1.6 | 4.6 | 42.1 | 2.59 ± 0.86 |
| `zsh zsh/foo` | 6.9 ± 0.9 | 6.1 | 19.6 | 3.24 ± 0.67 |
| `cobol/foo` | 7.7 ± 1.0 | 6.7 | 20.2 | 3.61 ± 0.73 |
| `nvim -l lua/foo.lua` | 14.0 ± 1.0 | 12.7 | 19.1 | 6.57 ± 1.13 |
| `haskell/foo` | 18.5 ± 1.5 | 15.8 | 23.0 | 8.68 ± 1.53 |
| `guile guile/foo.scm` | 21.0 ± 1.9 | 18.6 | 30.2 | 9.83 ± 1.76 |
| `ocaml ocaml/foo.ml` | 29.3 ± 1.3 | 27.5 | 38.1 | 13.75 ± 2.22 |
| `emacs --batch --script elisp/foo.el` | 32.4 ± 1.2 | 30.1 | 36.9 | 15.21 ± 2.43 |
| `python3 python/foo.py` | 39.7 ± 2.2 | 36.2 | 51.1 | 18.61 ± 3.08 |
| `nu nushell/foo.nu` | 51.3 ± 2.4 | 47.4 | 57.1 | 24.05 ± 3.90 |
| `dotnet csharp/bin/Debug/net8.0/csharp.dll` | 53.5 ± 1.9 | 50.4 | 58.9 | 25.07 ± 4.00 |
| `node nodejs/foo.js` | 61.0 ± 5.0 | 54.4 | 85.2 | 28.59 ± 5.04 |
| `dotnet fsharp/bin/Debug/net8.0/fsharp.dll` | 67.8 ± 2.4 | 63.9 | 77.8 | 31.81 ± 5.07 |
| `ruby ruby/foo.rb` | 69.9 ± 2.9 | 65.4 | 80.7 | 32.77 ± 5.28 |
| `java -cp java/ Foo` | 71.2 ± 3.8 | 66.9 | 92.6 | 33.39 ± 5.50 |
| `escript erlang/foo.erl` | 161.0 ± 6.0 | 156.4 | 183.7 | 75.53 ± 12.08 |
| `swift swift/foo.swift` | 181.4 ± 2.3 | 177.5 | 185.2 | 85.06 ± 13.27 |
| `kotlin -cp kotlin/ FooKt` | 241.5 ± 5.5 | 235.4 | 253.2 | 113.24 ± 17.80 |
| `go run go/foo.go` | 315.4 ± 4.2 | 310.0 | 320.6 | 147.94 ± 23.09 |
| `java java/Foo.java` | 548.8 ± 25.5 | 523.8 | 602.3 | 257.41 ± 41.78 |
| `clojure -M clojure/foo.clj` | 789.7 ± 29.2 | 758.1 | 839.1 | 370.37 ± 59.21 |
| `dotnet fsi fsharpx/Foo.fsx` | 1417.7 ± 24.1 | 1380.4 | 1448.7 | 664.92 ± 104.03 |
| `kotlin kotlin/Foo.main.kts` | 1458.9 ± 50.9 | 1393.8 | 1519.6 | 684.26 ± 109.07 |

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
  - `perl`
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
