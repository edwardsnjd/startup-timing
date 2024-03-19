| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `c/foo` | 2.0 ± 0.2 | 1.8 | 2.8 | 1.00 |
| `rust/foo` | 2.7 ± 0.5 | 2.2 | 5.2 | 1.35 ± 0.26 |
| `lua lua/foo.lua` | 3.6 ± 1.1 | 2.7 | 18.4 | 1.79 ± 0.57 |
| `bash bash/foo` | 4.5 ± 0.3 | 3.9 | 5.9 | 2.25 ± 0.25 |
| `zsh zsh/foo` | 6.6 ± 0.4 | 5.9 | 9.5 | 3.30 ± 0.36 |
| `guile guile/foo.scm` | 18.8 ± 1.0 | 17.0 | 24.5 | 9.43 ± 0.98 |
| `emacs --batch --script elisp/foo.el` | 31.7 ± 1.4 | 29.2 | 37.5 | 15.93 ± 1.59 |
| `python3 python/foo.py` | 45.6 ± 6.6 | 35.6 | 61.3 | 22.90 ± 3.88 |
| `nu nushell/foo.nu` | 57.6 ± 9.7 | 49.0 | 103.9 | 28.91 ± 5.49 |
| `node nodejs/foo.js` | 61.8 ± 7.5 | 55.7 | 101.6 | 31.02 ± 4.66 |
| `java -cp javaclass/ Foo` | 71.4 ± 8.2 | 66.8 | 117.5 | 35.84 ± 5.22 |
| `ruby ruby/foo.rb` | 82.8 ± 13.9 | 68.0 | 125.7 | 41.55 ± 7.91 |
| `kotlin -cp kotlinclass/ FooKt` | 227.9 ± 2.4 | 224.4 | 233.1 | 114.35 ± 10.25 |
| `java java/Foo.java` | 553.2 ± 40.8 | 514.8 | 642.8 | 277.62 ± 32.08 |
| `clojure -M clojure/foo.clj` | 744.1 ± 7.2 | 736.3 | 760.4 | 373.42 ± 33.44 |
| `kotlin kotlin/Foo.main.kts` | 1414.0 ± 60.9 | 1343.6 | 1559.8 | 709.62 ± 70.18 |
