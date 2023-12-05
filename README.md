# Logger
A Log for C++11

## Introduction
1. A logger for C++
2. 5 levels for log

## Version

| Project Name | Version | Status | Description | Author | Date | Remarks |
| ---   | --- | --- | --- |
| Logger | 1.0 | Done | A Logger used by C++11 | Matthew | 12/5/2023 |

## Compiler
`
make && ./testLogger
`

## Usage
1. Includ header file
`#include "Logger.hpp"`

2. Use Log
+ 
```
TRACE("x:",x, "y:",y);
INFO("x:",x, "y:",y);
DEBUG("x:",x, "y:",y);
WARN("x:",x, "y:",y);
ERROR("x:",x, "y:",y);
FATAL("x:",x, "y:",y);
```

## TODO
1. Adding different colors for various LOG LEVEL
2. Writing logs into Log_Files
3. Add key of modules for block display