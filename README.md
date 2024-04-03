startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `assembly-x86/foo` | 0.9 ± 0.2 | 0.8 | 11.3 | 1.00 |
| `c/foo` | 2.0 ± 0.2 | 1.8 | 3.3 | 2.16 ± 0.54 |
| `cpp/foo` | 2.1 ± 0.2 | 1.9 | 3.4 | 2.25 ± 0.56 |
| `swift/foo` | 2.3 ± 0.2 | 2.0 | 4.2 | 2.44 ± 0.62 |
| `rust/foo` | 2.5 ± 0.3 | 2.2 | 5.2 | 2.64 ± 0.69 |
| `lua lua/foo.lua` | 3.0 ± 0.2 | 2.6 | 4.5 | 3.13 ± 0.77 |
| `go/foo` | 3.5 ± 0.2 | 3.2 | 4.6 | 3.71 ± 0.89 |
| `fortran/foo` | 3.8 ± 0.3 | 3.4 | 6.3 | 4.06 ± 0.99 |
| `ocaml/foo` | 4.1 ± 0.3 | 3.7 | 5.6 | 4.32 ± 1.05 |
| `bash bash/foo` | 4.4 ± 0.3 | 4.0 | 6.0 | 4.69 ± 1.14 |
| `perl perl/foo.pl` | 5.0 ± 0.3 | 4.5 | 6.4 | 5.30 ± 1.28 |
| `zsh zsh/foo` | 6.5 ± 0.6 | 5.9 | 15.1 | 6.92 ± 1.74 |
| `cobol/foo` | 7.2 ± 0.4 | 6.5 | 9.7 | 7.59 ± 1.84 |
| `nvim -l lua/foo.lua` | 13.3 ± 0.8 | 12.2 | 18.9 | 14.10 ± 3.42 |
| `guile guile/foo.scm` | 18.8 ± 0.7 | 17.2 | 21.8 | 19.83 ± 4.70 |
| `haskell/foo` | 19.5 ± 1.8 | 15.6 | 25.5 | 20.64 ± 5.22 |
| `ocaml ocaml/foo.ml` | 27.0 ± 0.7 | 25.2 | 29.2 | 28.59 ± 6.74 |
| `emacs --batch --script elisp/foo.el` | 31.3 ± 1.3 | 29.4 | 36.1 | 33.09 ± 7.87 |
| `python3 python/foo.py` | 36.8 ± 1.0 | 34.8 | 39.4 | 38.90 ± 9.18 |
| `deno run deno/foo.js` | 38.4 ± 1.0 | 36.0 | 41.6 | 40.55 ± 9.57 |
| `nu nushell/foo.nu` | 48.1 ± 1.7 | 45.6 | 57.3 | 50.79 ± 12.05 |
| `dotnet csharp/bin/Debug/net8.0/csharp.dll` | 51.3 ± 1.6 | 49.0 | 59.0 | 54.20 ± 12.82 |
| `node nodejs/foo.js` | 54.9 ± 1.6 | 51.6 | 59.7 | 58.06 ± 13.71 |
| `ruby ruby/foo.rb` | 64.5 ± 2.1 | 61.6 | 76.2 | 68.15 ± 16.12 |
| `dotnet fsharp/bin/Debug/net8.0/fsharp.dll` | 65.7 ± 1.2 | 63.2 | 67.9 | 69.49 ± 16.34 |
| `java -cp java/ Foo` | 68.6 ± 1.7 | 65.6 | 75.9 | 72.49 ± 17.09 |
| `escript erlang/foo.erl` | 157.3 ± 2.2 | 154.1 | 163.1 | 166.28 ± 39.05 |
| `swift swift/foo.swift` | 177.6 ± 4.8 | 170.4 | 187.9 | 187.68 ± 44.29 |
| `kotlin -cp kotlin/ FooKt` | 230.9 ± 2.6 | 227.8 | 235.5 | 244.10 ± 57.28 |
| `go run go/foo.go` | 324.8 ± 23.1 | 303.1 | 363.3 | 343.27 ± 84.08 |
| `java java/Foo.java` | 535.9 ± 12.4 | 522.1 | 557.1 | 566.39 ± 133.40 |
| `clojure -M clojure/foo.clj` | 782.1 ± 12.1 | 764.8 | 803.0 | 826.72 ± 194.20 |
| `kotlin kotlin/Foo.main.kts` | 1385.3 ± 8.4 | 1375.9 | 1400.8 | 1464.25 ± 343.32 |
| `dotnet fsi fsharpx/Foo.fsx` | 1385.7 ± 21.8 | 1363.3 | 1425.7 | 1464.63 ± 344.06 |

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
  - `as`
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
