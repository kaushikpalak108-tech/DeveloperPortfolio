# System Profile

| Component | Specification |
|---|---|
| CPU Model | Intel(R) Core(TM) Ultra 5 226V |
| CPU Cores | 8 cores (1 thread per core) |
| Total RAM | 7.5 GiB |
| Available RAM | 7.0 GiB |
| Primary Storage | 1 TB (SSD) |
| Operating System | Ubuntu 26.04.1 LTS on WSL2 |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |

## Binary Number Representation

### Decimal 75 to Binary (division by 2)

- 75 / 2 = 37 remainder 1
- 37 / 2 = 18 remainder 1
- 18 / 2 = 9 remainder 0
- 9 / 2 = 4 remainder 1
- 4 / 2 = 2 remainder 0
- 2 / 2 = 1 remainder 0
- 1 / 2 = 0 remainder 1

Reading the remainders from bottom to top: **75 = 1001011** in binary.

### Binary 110101 to Decimal (positional weights)

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|---|---|---|---|---|---|---|
| Weight | 32 | 16 | 8 | 4 | 2 | 1 |

32 + 16 + 0 + 4 + 0 + 1 = **53**

So 110101 in binary = **53** in decimal.

### Why computers use binary

Computers use binary because electronic circuits have only two reliable states, ON and OFF, which map directly to 1 and 0.
