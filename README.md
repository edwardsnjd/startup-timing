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
| `c/foo` | 2.0 ± 0.2 | 1.8 | 3.2 | 1.00 |
| `rust/foo` | 2.5 ± 0.3 | 2.2 | 3.8 | 1.22 ± 0.19 |
| `lua lua/foo.lua` | 3.0 ± 0.3 | 2.6 | 4.2 | 1.47 ± 0.22 |
| `goclass/foo` | 3.6 ± 0.3 | 3.2 | 6.2 | 1.76 ± 0.25 |
| `bash bash/foo` | 4.6 ± 0.4 | 3.9 | 7.1 | 2.24 ± 0.32 |
| `zsh zsh/foo` | 6.7 ± 0.4 | 5.8 | 8.2 | 3.28 ± 0.43 |
| `nvim -l lua/foo.lua` | 14.2 ± 0.6 | 13.0 | 18.9 | 6.99 ± 0.85 |
| `guile guile/foo.scm` | 19.8 ± 0.7 | 18.6 | 22.5 | 9.72 ± 1.15 |
| `emacs --batch --script elisp/foo.el` | 33.2 ± 0.9 | 31.3 | 36.6 | 16.27 ± 1.89 |
| `python3 python/foo.py` | 37.6 ± 1.1 | 35.2 | 41.3 | 18.44 ± 2.15 |
| `nu nushell/foo.nu` | 52.1 ± 3.3 | 48.7 | 69.7 | 25.55 ± 3.30 |
| `node nodejs/foo.js` | 55.2 ± 1.7 | 52.2 | 60.9 | 27.05 ± 3.17 |
| `ruby ruby/foo.rb` | 65.7 ± 1.6 | 62.9 | 69.3 | 32.22 ± 3.74 |
| `java -cp javaclass/ Foo` | 69.3 ± 1.5 | 66.9 | 75.2 | 33.98 ± 3.92 |
| `kotlin -cp kotlinclass/ FooKt` | 231.7 ± 3.2 | 225.4 | 237.7 | 113.61 ± 12.96 |
| `go run go/foo.go` | 303.7 ± 5.6 | 295.1 | 313.2 | 148.91 ± 17.08 |
| `java java/Foo.java` | 523.3 ± 16.3 | 500.9 | 551.4 | 256.59 ± 30.13 |
| `clojure -M clojure/foo.clj` | 750.1 ± 7.1 | 740.2 | 764.3 | 367.78 ± 41.79 |
| `kotlin kotlin/Foo.main.kts` | 1379.0 ± 21.1 | 1343.8 | 1423.9 | 676.19 ± 77.27 |
