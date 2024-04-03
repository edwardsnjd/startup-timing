startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.2 | 1.8 | 4.1 | 1.00 |
| `cpp/foo` | 2.2 ± 0.3 | 1.9 | 5.3 | 1.06 ± 0.17 |
| `swift/foo` | 2.4 ± 0.2 | 2.0 | 4.8 | 1.13 ± 0.17 |
| `rust/foo` | 2.6 ± 0.9 | 2.2 | 26.1 | 1.24 ± 0.44 |
| `lua lua/foo.lua` | 3.1 ± 0.4 | 2.6 | 10.3 | 1.48 ± 0.25 |
| `go/foo` | 3.7 ± 0.4 | 3.2 | 6.8 | 1.77 ± 0.28 |
| `fortran/foo` | 4.0 ± 0.4 | 3.4 | 7.0 | 1.89 ± 0.29 |
| `ocaml/foo` | 4.4 ± 1.1 | 3.7 | 27.6 | 2.11 ± 0.59 |
| `bash bash/foo` | 4.6 ± 0.9 | 3.9 | 20.9 | 2.20 ± 0.49 |
| `perl perl/foo.pl` | 5.3 ± 0.5 | 4.6 | 9.0 | 2.51 ± 0.36 |
| `zsh zsh/foo` | 6.7 ± 0.5 | 5.9 | 9.8 | 3.18 ± 0.42 |
| `cobol/foo` | 7.4 ± 0.6 | 6.6 | 16.6 | 3.54 ± 0.49 |
| `nvim -l lua/foo.lua` | 13.8 ± 0.9 | 12.4 | 19.1 | 6.59 ± 0.85 |
| `haskell/foo` | 19.0 ± 2.1 | 14.6 | 32.2 | 9.04 ± 1.40 |
| `guile guile/foo.scm` | 19.9 ± 1.1 | 18.0 | 24.9 | 9.48 ± 1.16 |
| `ocaml ocaml/foo.ml` | 28.5 ± 1.0 | 26.5 | 32.7 | 13.57 ± 1.58 |
| `emacs --batch --script elisp/foo.el` | 32.1 ± 1.3 | 30.1 | 35.7 | 15.30 ± 1.79 |
| `python3 python/foo.py` | 39.4 ± 2.0 | 36.7 | 47.0 | 18.79 ± 2.29 |
| `deno run deno/foo.js` | 39.7 ± 2.6 | 36.9 | 57.2 | 18.91 ± 2.43 |
| `nu nushell/foo.nu` | 50.0 ± 1.6 | 46.7 | 57.2 | 23.81 ± 2.73 |
| `dotnet csharp/bin/Debug/net8.0/csharp.dll` | 53.8 ± 2.6 | 50.9 | 66.0 | 25.61 ± 3.09 |
| `node nodejs/foo.js` | 56.1 ± 1.3 | 52.6 | 58.8 | 26.71 ± 3.01 |
| `ruby ruby/foo.rb` | 67.4 ± 1.9 | 63.9 | 73.3 | 32.13 ± 3.66 |
| `dotnet fsharp/bin/Debug/net8.0/fsharp.dll` | 68.5 ± 2.9 | 65.2 | 78.5 | 32.66 ± 3.86 |
| `java -cp java/ Foo` | 70.0 ± 1.7 | 66.9 | 74.7 | 33.34 ± 3.77 |
| `escript erlang/foo.erl` | 160.0 ± 2.0 | 157.1 | 164.6 | 76.21 ± 8.46 |
| `swift swift/foo.swift` | 173.2 ± 2.1 | 170.1 | 176.8 | 82.51 ± 9.16 |
| `kotlin -cp kotlin/ FooKt` | 235.1 ± 2.6 | 229.9 | 238.5 | 112.00 ± 12.42 |
| `go run go/foo.go` | 346.8 ± 42.6 | 309.4 | 422.1 | 165.23 ± 27.28 |
| `java java/Foo.java` | 545.6 ± 11.2 | 532.0 | 567.3 | 259.95 ± 29.17 |
| `clojure -M clojure/foo.clj` | 815.0 ± 6.9 | 802.8 | 824.8 | 388.28 ± 42.96 |
| `dotnet fsi fsharpx/Foo.fsx` | 1429.8 ± 25.1 | 1397.3 | 1465.5 | 681.22 ± 76.10 |
| `kotlin kotlin/Foo.main.kts` | 1432.8 ± 30.0 | 1396.6 | 1500.9 | 682.67 ± 76.66 |

Running
-------

Ensure you have the dependencies installed and available on your `PATH`:

- Tooling
  - `make`
  - `hyperfine`
- Shells
    - `bash`, `zsh`, and `nu` (nushell)
- Interpreters
  - `deno`
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
