startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages and means of executing them.

Usage
-----

Ensure you have the dependencies installed and available on your `PATH`:

- Tooling
  - `make`
  - `hyperfine`
- Shells
    - `bash`, `zsh`, and `nu` (nushell)
- Interpreters
  - `lua`
  - `node`
  - `python3`
  - `ruby`
  - `emacs`
  - `nvim`
  - `guile`
  - `go`
- Compilers
  - `gcc`
  - `rustc`
  - `javac`
  - `kotlinc`
  - `go`
- JVM
  - `java`
  - `clojure`
  - `kotlin`

Then compile and run the benchmarks:

```bash
make
```

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.3 ± 0.6 | 1.8 | 11.3 | 1.00 |
| `rust/foo` | 2.7 ± 0.5 | 2.2 | 5.6 | 1.14 ± 0.36 |
| `lua lua/foo.lua` | 3.2 ± 0.8 | 2.6 | 13.6 | 1.39 ± 0.50 |
| `goclass/foo` | 4.2 ± 1.6 | 3.2 | 24.2 | 1.82 ± 0.82 |
| `bash bash/foo` | 4.9 ± 1.4 | 3.9 | 23.0 | 2.12 ± 0.82 |
| `zsh zsh/foo` | 7.0 ± 0.9 | 5.9 | 11.7 | 3.03 ± 0.89 |
| `nvim -l lua/foo.lua` | 16.0 ± 2.2 | 12.4 | 33.0 | 6.90 ± 2.04 |
| `haskell/foo` | 18.5 ± 1.9 | 15.0 | 23.9 | 8.00 ± 2.25 |
| `guile guile/foo.scm` | 21.5 ± 2.6 | 18.2 | 32.5 | 9.30 ± 2.67 |
| `emacs --batch --script elisp/foo.el` | 33.6 ± 3.4 | 29.5 | 56.4 | 14.48 ± 4.06 |
| `python3 python/foo.py` | 39.3 ± 1.8 | 35.5 | 46.5 | 16.96 ± 4.50 |
| `nu nushell/foo.nu` | 59.8 ± 5.2 | 51.1 | 70.1 | 25.83 ± 7.11 |
| `node nodejs/foo.js` | 62.1 ± 9.8 | 53.7 | 98.6 | 26.82 ± 8.18 |
| `ruby ruby/foo.rb` | 66.6 ± 2.1 | 63.0 | 71.9 | 28.76 ± 7.57 |
| `java -cp javaclass/ Foo` | 72.7 ± 2.2 | 68.8 | 77.6 | 31.38 ± 8.26 |
| `kotlin -cp kotlinclass/ FooKt` | 234.5 ± 2.4 | 229.6 | 238.0 | 101.23 ± 26.49 |
| `go run go/foo.go` | 344.0 ± 36.8 | 300.2 | 428.4 | 148.48 ± 41.96 |
| `java java/Foo.java` | 540.9 ± 13.1 | 522.1 | 568.9 | 233.48 ± 61.32 |
| `clojure -M clojure/foo.clj` | 885.5 ± 68.6 | 828.7 | 1010.5 | 382.27 ± 104.27 |
| `kotlin kotlin/Foo.main.kts` | 1458.6 ± 27.1 | 1413.0 | 1499.3 | 629.65 ± 165.08 |
