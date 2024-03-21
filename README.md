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
| `c/foo` | 2.1 ± 0.3 | 1.8 | 4.3 | 1.00 |
| `rust/foo` | 2.6 ± 0.5 | 2.2 | 7.2 | 1.26 ± 0.30 |
| `lua lua/foo.lua` | 3.0 ± 0.3 | 2.6 | 4.7 | 1.44 ± 0.26 |
| `bash bash/foo` | 4.5 ± 0.4 | 4.0 | 6.4 | 2.15 ± 0.39 |
| `zsh zsh/foo` | 7.1 ± 1.2 | 5.9 | 18.3 | 3.43 ± 0.79 |
| `nvim -l lua/foo.lua` | 13.6 ± 0.9 | 12.4 | 20.4 | 6.53 ± 1.14 |
| `guile guile/foo.scm` | 20.0 ± 2.3 | 17.6 | 35.7 | 9.61 ± 1.91 |
| `emacs --batch --script elisp/foo.el` | 33.0 ± 2.5 | 29.9 | 45.3 | 15.89 ± 2.81 |
| `python3 python/foo.py` | 40.2 ± 6.3 | 35.4 | 81.0 | 19.35 ± 4.32 |
| `nu nushell/foo.nu` | 47.9 ± 1.8 | 45.1 | 54.0 | 23.08 ± 3.80 |
| `node nodejs/foo.js` | 54.4 ± 1.8 | 51.5 | 61.7 | 26.21 ± 4.29 |
| `java -cp javaclass/ Foo` | 68.8 ± 2.3 | 66.5 | 79.9 | 33.17 ± 5.43 |
| `ruby ruby/foo.rb` | 71.9 ± 7.6 | 62.6 | 104.6 | 34.65 ± 6.66 |
| `kotlin -cp kotlinclass/ FooKt` | 229.0 ± 1.8 | 226.1 | 231.3 | 110.35 ± 17.71 |
| `java java/Foo.java` | 539.6 ± 29.4 | 519.9 | 620.6 | 259.99 ± 44.02 |
| `clojure -M clojure/foo.clj` | 800.9 ± 47.4 | 753.0 | 925.0 | 385.89 ± 65.94 |
| `kotlin kotlin/Foo.main.kts` | 1449.6 ± 23.6 | 1402.4 | 1477.5 | 698.40 ± 112.54 |
