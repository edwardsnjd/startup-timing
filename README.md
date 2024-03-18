startup-timing
==============

A bunch of hello world programs to compare the startup time of various programming languages.

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
- Compilers
  - `gcc`
  - `rustc`
  - `javac`
  - `kotlinc`
- JVM
  - `java`
  - `kotlin`

Then compile and run the benchmarks:

```bash
make
```

Results
-------

| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.1 ± 0.2 | 1.8 | 3.3 | 1.00 |
| `rust/foo` | 2.5 ± 0.3 | 2.2 | 4.3 | 1.22 ± 0.18 |
| `lua lua/foo.lua` | 3.1 ± 0.3 | 2.7 | 4.6 | 1.49 ± 0.20 |
| `bash bash/foo` | 4.7 ± 0.4 | 4.1 | 7.0 | 2.23 ± 0.29 |
| `zsh zsh/foo` | 6.7 ± 0.5 | 6.0 | 10.6 | 3.23 ± 0.42 |
| `python3 python/foo.py` | 39.4 ± 1.0 | 35.8 | 42.1 | 18.84 ± 2.02 |
| `nu nushell/foo.nu` | 50.0 ± 1.2 | 46.9 | 52.1 | 23.96 ± 2.55 |
| `node nodejs/foo.js` | 56.1 ± 2.3 | 52.7 | 66.1 | 26.85 ± 2.99 |
| `ruby ruby/foo.rb` | 68.8 ± 1.2 | 66.2 | 71.5 | 32.93 ± 3.47 |
| `java -cp javaclass/ Foo` | 70.1 ± 1.4 | 68.2 | 75.0 | 33.57 ± 3.55 |
| `kotlin -cp kotlinclass/ FooKt` | 236.2 ± 3.0 | 232.3 | 242.1 | 113.11 ± 11.83 |
| `java java/Foo.java` | 533.8 ± 10.0 | 521.8 | 544.8 | 255.59 ± 26.97 |
| `kotlin kotlin/Foo.main.kts` | 1430.3 ± 30.5 | 1399.9 | 1498.6 | 684.90 ± 72.62 |
