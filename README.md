# Ripple Carry Adder Build Test with LucidV2

Tested on:

- Debian 12.5
- AlchitryLabsV2 1.2.7
- Vivado 2023.2

See `build/vivado/test-rca-v2.runs/synth_1/runme.log`:

```
INFO: [Synth 8-6155] done synthesizing module 'MI_fa' (0#1) [/media/share/Alchitry/test-rca-v2/build/vivado/test-rca-v2.srcs/sources_1/imports/source/MI_fa.v:6]
ERROR: [Synth 8-403] loop limit (65536) exceeded [/media/share/Alchitry/test-rca-v2/build/vivado/test-rca-v2.srcs/sources_1/imports/source/MI_rca_4a107a09.v:87]
ERROR: [Synth 8-6156] failed synthesizing module 'MI_rca_4a107a09' [/media/share/Alchitry/test-rca-v2/build/vivado/test-rca-v2.srcs/sources_1/imports/source/MI_rca_4a107a09.v:10]
ERROR: [Synth 8-6156] failed synthesizing module 'MI_alchitryTop' [/media/share/Alchitry/test-rca-v2/build/vivado/test-rca-v2.srcs/sources_1/imports/source/MI_alchitryTop.v:6]
```

Issue: the `repeat` loop in `rca.luc`. If compiled with plain connection, it builds successfully and can be run on Alchitry Au

```
        repeat(i, SIZE){
            if (i == 0){
                fa.cin[0] = cin
            }
            else{
                fa.cin[i] = fa.cout[i-1]
            }

        }

        // plain connection works consistently
        // fa.cin[0] = cin
        // fa.cin[SIZE-1:1] = fa.cout[SIZE-2:0]
```
