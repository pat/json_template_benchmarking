## Single object

```
Warming up --------------------------------------
            jbuilder     1.597k i/100ms
                 ams     1.646k i/100ms
                roar     1.311k i/100ms
                 oat     1.913k i/100ms
Calculating -------------------------------------
            jbuilder     16.809k (± 4.8%) i/s -     84.641k in   5.047412s
                 ams     16.894k (± 3.9%) i/s -     85.592k in   5.074171s
                roar     13.427k (± 5.9%) i/s -     66.861k in   5.002652s
                 oat     16.824k (±17.2%) i/s -     82.259k in   5.087997s

Comparison:
                 ams:    16893.8 i/s
                 oat:    16823.8 i/s - same-ish: difference falls within error
            jbuilder:    16808.8 i/s - same-ish: difference falls within error
                roar:    13427.2 i/s - 1.26x  slower

```

## Single object rendered via Rails

```
Warming up --------------------------------------
            jbuilder   283.000  i/100ms
    jbuilder_partial   184.000  i/100ms
                 ams   317.000  i/100ms
                roar   324.000  i/100ms
                 oat   354.000  i/100ms
Calculating -------------------------------------
            jbuilder      3.394k (±10.2%) i/s -     16.980k in   5.068620s
    jbuilder_partial      2.245k (± 4.1%) i/s -     11.224k in   5.008857s
                 ams      4.072k (± 4.8%) i/s -     20.605k in   5.073447s
                roar      3.768k (± 4.5%) i/s -     19.116k in   5.084369s
                 oat      4.148k (±11.6%) i/s -     20.532k in   5.092528s

Comparison:
                 oat:     4147.9 i/s
                 ams:     4072.0 i/s - same-ish: difference falls within error
                roar:     3767.5 i/s - same-ish: difference falls within error
            jbuilder:     3394.4 i/s - same-ish: difference falls within error
    jbuilder_partial:     2244.8 i/s - 1.85x  slower

```

## Many objects

```
Warming up --------------------------------------
            jbuilder   117.000  i/100ms
                 ams    70.000  i/100ms
                roar    75.000  i/100ms
                 oat   120.000  i/100ms
Calculating -------------------------------------
            jbuilder      1.167k (± 3.0%) i/s -      5.850k in   5.019075s
                 ams    712.341  (± 4.1%) i/s -      3.570k in   5.020073s
                roar    759.604  (± 3.4%) i/s -      3.825k in   5.041613s
                 oat      1.183k (± 4.8%) i/s -      6.000k in   5.086133s

Comparison:
                 oat:     1182.8 i/s
            jbuilder:     1166.6 i/s - same-ish: difference falls within error
                roar:      759.6 i/s - 1.56x  slower
                 ams:      712.3 i/s - 1.66x  slower

```

## Many objects rendered via Rails

```
Warming up --------------------------------------
            jbuilder    88.000  i/100ms
    jbuilder_partial    24.000  i/100ms
                 ams    61.000  i/100ms
                roar    66.000  i/100ms
                 oat    99.000  i/100ms
Calculating -------------------------------------
            jbuilder    950.378  (± 5.2%) i/s -      4.752k in   5.017458s
    jbuilder_partial    241.989  (± 4.1%) i/s -      1.224k in   5.067311s
                 ams    630.899  (± 3.0%) i/s -      3.172k in   5.032124s
                roar    646.170  (± 8.2%) i/s -      3.234k in   5.054105s
                 oat      1.002k (± 3.5%) i/s -      5.049k in   5.046458s

Comparison:
                 oat:     1001.7 i/s
            jbuilder:      950.4 i/s - same-ish: difference falls within error
                roar:      646.2 i/s - 1.55x  slower
                 ams:      630.9 i/s - 1.59x  slower
    jbuilder_partial:      242.0 i/s - 4.14x  slower

```
