## Single object

```
Calculating -------------------------------------
            jbuilder      1403 i/100ms
                 ams      1401 i/100ms
                roar       681 i/100ms
                 oat      1432 i/100ms
-------------------------------------------------
            jbuilder    14518.9 (±5.3%) i/s -      72956 in   5.040252s
                 ams    14495.6 (±11.0%) i/s -      71451 in   5.025996s
                roar     7275.7 (±3.6%) i/s -      36774 in   5.060906s
                 oat    16087.5 (±4.5%) i/s -      81624 in   5.083825s

Comparison:
                 oat:    16087.5 i/s
            jbuilder:    14518.9 i/s - 1.11x slower
                 ams:    14495.6 i/s - 1.11x slower
                roar:     7275.7 i/s - 2.21x slower

```

## Single object rendered via Rails

```
Calculating -------------------------------------
            jbuilder         7 i/100ms
    jbuilder_partial         6 i/100ms
                 ams       430 i/100ms
                roar       338 i/100ms
                 oat       384 i/100ms
-------------------------------------------------
            jbuilder       75.2 (±10.6%) i/s -        371 in   5.005000s
    jbuilder_partial       52.7 (±9.5%) i/s -        264 in   5.049218s
                 ams     4162.1 (±3.8%) i/s -      21070 in   5.069686s
                roar     3018.3 (±7.5%) i/s -      15210 in   5.068744s
                 oat     4142.2 (±14.7%) i/s -      19968 in   5.014306s

Comparison:
                 ams:     4162.1 i/s
                 oat:     4142.2 i/s - 1.00x slower
                roar:     3018.3 i/s - 1.38x slower
            jbuilder:       75.2 i/s - 55.38x slower
    jbuilder_partial:       52.7 i/s - 78.92x slower

```

## Many object

```
Calculating -------------------------------------
            jbuilder        86 i/100ms
                 ams        56 i/100ms
                roar        35 i/100ms
                 oat        87 i/100ms
-------------------------------------------------
            jbuilder      867.3 (±6.3%) i/s -       4386 in   5.077652s
                 ams      595.2 (±10.2%) i/s -       2968 in   5.050000s
                roar      374.8 (±6.4%) i/s -       1890 in   5.063935s
                 oat      903.5 (±9.5%) i/s -       4524 in   5.069985s

Comparison:
                 oat:      903.5 i/s
            jbuilder:      867.3 i/s - 1.04x slower
                 ams:      595.2 i/s - 1.52x slower
                roar:      374.8 i/s - 2.41x slower

```

## Many objects rendered via Rails

```
Calculating -------------------------------------
            jbuilder         6 i/100ms
    jbuilder_partial         1 i/100ms
                 ams        52 i/100ms
                roar        33 i/100ms
                 oat        77 i/100ms
-------------------------------------------------
            jbuilder       65.9 (±10.6%) i/s -        330 in   5.074812s
    jbuilder_partial        9.0 (±22.3%) i/s -         43 in   5.072580s
                 ams      439.8 (±23.2%) i/s -       2080 in   5.120066s
                roar      291.8 (±17.8%) i/s -       1452 in   5.168423s
                 oat      773.0 (±10.3%) i/s -       3850 in   5.047239s

Comparison:
                 oat:      773.0 i/s
                 ams:      439.8 i/s - 1.76x slower
                roar:      291.8 i/s - 2.65x slower
            jbuilder:       65.9 i/s - 11.74x slower
    jbuilder_partial:        9.0 i/s - 86.19x slower

```
