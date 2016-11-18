## Single object

```
Calculating -------------------------------------
            jbuilder      1345 i/100ms
                 ams      1357 i/100ms
                roar       657 i/100ms
                 oat      1457 i/100ms
-------------------------------------------------
            jbuilder    14062.4 (±8.5%) i/s -      69940 in   5.019323s
                 ams    14757.1 (±5.8%) i/s -      74635 in   5.075486s
                roar     6904.7 (±10.4%) i/s -      34821 in   5.112213s
                 oat    15634.5 (±8.8%) i/s -      78678 in   5.076946s

Comparison:
                 oat:    15634.5 i/s
                 ams:    14757.1 i/s - 1.06x slower
            jbuilder:    14062.4 i/s - 1.11x slower
                roar:     6904.7 i/s - 2.26x slower

```

## Single object rendered via Rails

```
Calculating -------------------------------------
            jbuilder         7 i/100ms
    jbuilder_partial         6 i/100ms
                 ams       399 i/100ms
                roar       310 i/100ms
                 oat       427 i/100ms
-------------------------------------------------
            jbuilder       80.7 (±5.0%) i/s -        406 in   5.044893s
    jbuilder_partial       61.6 (±4.9%) i/s -        312 in   5.075539s
                 ams     4398.7 (±5.2%) i/s -      21945 in   5.002910s
                roar     3357.3 (±5.6%) i/s -      16740 in   5.002101s
                 oat     4549.4 (±5.7%) i/s -      23058 in   5.086184s

Comparison:
                 oat:     4549.4 i/s
                 ams:     4398.7 i/s - 1.03x slower
                roar:     3357.3 i/s - 1.36x slower
            jbuilder:       80.7 i/s - 56.35x slower
    jbuilder_partial:       61.6 i/s - 73.85x slower

```

## Many objects

```
Calculating -------------------------------------
            jbuilder        98 i/100ms
                 ams        57 i/100ms
                roar        32 i/100ms
                 oat        74 i/100ms
-------------------------------------------------
            jbuilder      994.5 (±4.5%) i/s -       4998 in   5.036242s
                 ams      650.8 (±5.5%) i/s -       3306 in   5.096497s
                roar      408.4 (±5.4%) i/s -       2048 in   5.030905s
                 oat      972.0 (±5.8%) i/s -       4884 in   5.042133s

Comparison:
            jbuilder:      994.5 i/s
                 oat:      972.0 i/s - 1.02x slower
                 ams:      650.8 i/s - 1.53x slower
                roar:      408.4 i/s - 2.44x slower

```

## Many objects rendered via Rails

```
Calculating -------------------------------------
            jbuilder         7 i/100ms
    jbuilder_partial         1 i/100ms
                 ams        55 i/100ms
                roar        35 i/100ms
                 oat        82 i/100ms
-------------------------------------------------
            jbuilder       74.4 (±6.7%) i/s -        371 in   5.004653s
    jbuilder_partial       10.1 (±19.7%) i/s -         49 in   5.015755s
                 ams      539.0 (±9.3%) i/s -       2695 in   5.060235s
                roar      325.5 (±11.1%) i/s -       1610 in   5.022183s
                 oat      775.7 (±8.6%) i/s -       3854 in   5.020160s

Comparison:
                 oat:      775.7 i/s
                 ams:      539.0 i/s - 1.44x slower
                roar:      325.5 i/s - 2.38x slower
            jbuilder:       74.4 i/s - 10.42x slower
    jbuilder_partial:       10.1 i/s - 76.45x slower

```
