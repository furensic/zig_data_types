# Data Types in Zig

## Integers and Floats

|type|description|max value|max digits|min value|max digits|bits|mantissa bits|
|----|-----------|---------|----------|---------|----------|----|-------------|
|u8|unsigned 8-bit integer|255|3|0|1|8| - |
|u16|unsigned 16-bit integer|65535|5|0|1|16| - |
|u32|unsigned 32-bit integer|4294967295|10|0|1|32| - |
|u64|unsigned 64-bit integer|18446744073709551615|20|0|1|64| - |
|u128|unsigned 128-bit integer|340282366920938463463374607431768211455|39|0|1|128| - |
|i8|signed 8-bit integer|127|3|-128|4|8| - |
|i16|signed 16-bit integer|32767|5|-32768|6|16| - |
|i32|signed 32-bit integer|2147483647|10|-2147483648|11|32| - |
|i64|signed 64-bit integer|9223372036854775807|19|-9223372036854775808|20|64| - |
|i128|signed 128-bit integer|170141183460469231731687303715884105727|39|-170141183460469231731687303715884105728|40|128| - |
|f16|16-bit floating point|6.55e4|6|6.104e-5|8|16|10|
|f32|32-bit floating point|3.4028235e38|12|1.1754944e-38|13|32|23|
|f64|64-bit floating point|1.7976931348623157e308|22|2.2250738585072014e-308|23|64|52|
|f128|128-bit floating point|1.189731495357231765085759326628007e4932|40|3.3621031431120935062626778173217526e-4932|42|128|112|
