#!/usr/bin/env bash

ZIG_TEST='zig build test'

# -fsummary                    Print the build summary, even on success
# -freference-trace            Reference trace should be shown per compile error
Args='-fsummary -freference-trace'

## Test all algorithms

# Math
$ZIG_TEST -Dalgorithm=math/ceil $Args
$ZIG_TEST -Dalgorithm=math/crt $Args
$ZIG_TEST -Dalgorithm=math/primes $Args
$ZIG_TEST -Dalgorithm=math/fibonacci $Args
$ZIG_TEST -Dalgorithm=math/factorial $Args
$ZIG_TEST -Dalgorithm=math/euclidianGCDivisor $Args
$ZIG_TEST -Dalgorithm=math/gcd $Args

# Data Structures
$ZIG_TEST -Dalgorithm=ds/linkedlist $Args
$ZIG_TEST -Dalgorithm=ds/lrucache $Args

# Dynamic Programming

## Sort
$ZIG_TEST -Dalgorithm=sort/quicksort $Args
$ZIG_TEST -Dalgorithm=sort/bubblesort $Args
$ZIG_TEST -Dalgorithm=sort/radixsort $Args
$ZIG_TEST -Dalgorithm=sort/mergesort $Args
$ZIG_TEST -Dalgorithm=sort/insertsort $Args

## Search
$ZIG_TEST -Dalgorithm=search/bSearchTree $Args
$ZIG_TEST -Dalgorithm=search/rb $Args

## Threads
$ZIG_TEST -Dalgorithm=threads/threadpool $Args

## Web
$ZIG_TEST -Dalgorithm=web/httpClient $Args
$ZIG_TEST -Dalgorithm=web/httpServer $Args
$ZIG_TEST -Dalgorithm=web/tls1_3 $Args

## Add more...