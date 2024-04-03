startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

All programs do the equivalent of "print 'hello world' to stdout, then exit".

The results below are the total time to start, run, and exit.

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.2 ± 0.4 | 1.8 | 4.2 | 1.00 |
| `cpp/foo` | 2.3 ± 0.4 | 1.9 | 5.6 | 1.05 ± 0.27 |
| `swift/foo` | 2.4 ± 0.4 | 2.0 | 5.0 | 1.13 ± 0.29 |
| `rust/foo` | 2.6 ± 0.4 | 2.2 | 5.5 | 1.21 ± 0.30 |
| `lua lua/foo.lua` | 3.2 ± 0.5 | 2.6 | 5.8 | 1.47 ± 0.36 |
| `go/foo` | 3.8 ± 0.6 | 3.1 | 7.1 | 1.74 ± 0.42 |
| `ocaml/foo` | 4.3 ± 0.6 | 3.6 | 8.2 | 2.01 ± 0.46 |
| `bash bash/foo` | 4.7 ± 0.7 | 4.0 | 8.7 | 2.20 ± 0.52 |
| `zsh zsh/foo` | 7.0 ± 1.1 | 5.8 | 21.2 | 3.24 ± 0.79 |
| `nvim -l lua/foo.lua` | 14.1 ± 1.4 | 12.1 | 20.1 | 6.54 ± 1.36 |
| `guile guile/foo.scm` | 19.7 ± 1.5 | 17.2 | 25.3 | 9.14 ± 1.81 |
| `haskell/foo` | 20.6 ± 2.1 | 15.9 | 26.6 | 9.56 ± 2.02 |
| `ocaml ocaml/foo.ml` | 28.6 ± 1.6 | 25.8 | 33.9 | 13.25 ± 2.55 |
| `emacs --batch --script elisp/foo.el` | 33.6 ± 1.7 | 30.3 | 39.3 | 15.57 ± 2.97 |
| `python3 python/foo.py` | 38.5 ± 2.1 | 33.6 | 43.7 | 17.86 ± 3.43 |
| `nu nushell/foo.nu` | 49.4 ± 2.3 | 44.1 | 55.9 | 22.90 ± 4.34 |
| `dotnet csharp/bin/Debug/net8.0/csharp.dll` | 52.8 ± 2.5 | 48.8 | 58.6 | 24.48 ± 4.64 |
| `node nodejs/foo.js` | 55.0 ± 1.9 | 51.9 | 59.5 | 25.51 ± 4.77 |
| `ruby ruby/foo.rb` | 66.2 ± 2.5 | 61.6 | 71.9 | 30.69 ± 5.76 |
| `dotnet fsharp/bin/Debug/net8.0/fsharp.dll` | 67.0 ± 2.3 | 62.6 | 71.8 | 31.07 ± 5.81 |
| `java -cp java/ Foo` | 72.0 ± 2.2 | 68.2 | 77.2 | 33.36 ± 6.22 |
| `escript erlang/foo.erl` | 158.4 ± 2.4 | 154.3 | 162.2 | 73.40 ± 13.53 |
| `swift swift/foo.swift` | 176.5 ± 4.7 | 169.9 | 189.2 | 81.81 ± 15.19 |
| `kotlin -cp kotlin/ FooKt` | 236.0 ± 3.4 | 232.4 | 242.8 | 109.36 ± 20.16 |
| `go run go/foo.go` | 306.7 ± 3.6 | 301.4 | 313.0 | 142.15 ± 26.18 |
| `java java/Foo.java` | 533.8 ± 13.0 | 522.3 | 565.5 | 247.40 ± 45.87 |
| `clojure -M clojure/foo.clj` | 774.6 ± 9.0 | 762.5 | 796.9 | 358.98 ± 66.10 |
| `dotnet fsi fsharpx/Foo.fsx` | 1344.4 ± 16.1 | 1321.2 | 1371.3 | 623.03 ± 114.74 |
| `kotlin kotlin/Foo.main.kts` | 1402.0 ± 41.4 | 1359.8 | 1506.6 | 649.72 ± 120.94 |

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
