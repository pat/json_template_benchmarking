## Single object

```
Calculating -------------------------------------
            jbuilder      1173 i/100ms
                 ams      1325 i/100ms
                roar       622 i/100ms
                 oat      1455 i/100ms
-------------------------------------------------
            jbuilder    13516.2 (±7.2%) i/s -      68034 in   5.064893s
                 ams    13135.4 (±14.9%) i/s -      64925 in   5.088606s
                roar     5925.7 (±26.7%) i/s -      27368 in   5.074208s
                 oat    16095.6 (±4.7%) i/s -      81480 in   5.073858s

Comparison:
                 oat:    16095.6 i/s
            jbuilder:    13516.2 i/s - 1.19x slower
                 ams:    13135.4 i/s - 1.23x slower
                roar:     5925.7 i/s - 2.72x slower

```

## Single object rendered via Rails

```
Calculating -------------------------------------
            jbuilder       265 i/100ms
    jbuilder_partial       213 i/100ms
                 ams       389 i/100ms
                roar       225 i/100ms
                 oat       190 i/100ms
-------------------------------------------------
            jbuilder     3304.0 (±18.7%) i/s -      15635 in   5.021600s
    jbuilder_partial     2225.0 (±9.8%) i/s -      11076 in   5.037366s
                 ams     3874.8 (±13.1%) i/s -      19061 in   5.032354s
                roar     2839.9 (±14.5%) i/s -      13950 in   5.033629s
                 oat     3981.5 (±9.8%) i/s -      19760 in   5.017189s

Comparison:
                 oat:     3981.5 i/s
                 ams:     3874.8 i/s - 1.03x slower
            jbuilder:     3304.0 i/s - 1.21x slower
                roar:     2839.9 i/s - 1.40x slower
    jbuilder_partial:     2225.0 i/s - 1.79x slower

```

## Many objects

```
Calculating -------------------------------------
            jbuilder        88 i/100ms
                 ams        65 i/100ms
                roar        33 i/100ms
                 oat        90 i/100ms
-------------------------------------------------
            jbuilder      917.0 (±14.4%) i/s -       4488 in   5.045271s
                 ams      558.7 (±15.2%) i/s -       2730 in   5.012938s
                roar      361.0 (±12.2%) i/s -       1782 in   5.025827s
                 oat      919.5 (±7.7%) i/s -       4590 in   5.028994s

Comparison:
                 oat:      919.5 i/s
            jbuilder:      917.0 i/s - 1.00x slower
                 ams:      558.7 i/s - 1.65x slower
                roar:      361.0 i/s - 2.55x slower

```

## Many objects rendered via Rails

```
Calculating -------------------------------------
            jbuilder        59 i/100ms
    jbuilder_partial        21 i/100ms
                 ams        58 i/100ms
                roar        31 i/100ms
                 oat        75 i/100ms
-------------------------------------------------
            jbuilder      777.0 (±7.2%) i/s -       3894 in   5.038744s
    jbuilder_partial      206.5 (±8.7%) i/s -       1029 in   5.019727s
                 ams      548.1 (±8.0%) i/s -       2726 in   5.007193s
                roar      339.7 (±8.2%) i/s -       1705 in   5.052459s
                 oat      709.5 (±14.5%) i/s -       3450 in   5.009525s

Comparison:
            jbuilder:      777.0 i/s
                 oat:      709.5 i/s - 1.10x slower
                 ams:      548.1 i/s - 1.42x slower
                roar:      339.7 i/s - 2.29x slower
    jbuilder_partial:      206.5 i/s - 3.76x slower

```
