@echo off

set ZIG_TEST=zig build test

rem -fsummary                    Print the build summary, even on success
rem -freference-trace            Reference trace should be shown per compile error
set Args=-fsummary -freference-trace

rem Test all algorithms

rem Math
%ZIG_TEST% -Dalgorithm=math/ceil %Args%
%ZIG_TEST% -Dalgorithm=math/crt %Args%
%ZIG_TEST% -Dalgorithm=math/primes %Args%
%ZIG_TEST% -Dalgorithm=math/fibonacci %Args%
%ZIG_TEST% -Dalgorithm=math/factorial %Args%
%ZIG_TEST% -Dalgorithm=math/euclidianGCDivisor %Args%
%ZIG_TEST% -Dalgorithm=math/gcd %Args%

rem Data Structures
%ZIG_TEST% -Dalgorithm=ds/linkedlist %Args%
%ZIG_TEST% -Dalgorithm=ds/lrucache %Args%

rem Dynamic Programming

rem Sort
%ZIG_TEST% -Dalgorithm=sort/quicksort %Args%
%ZIG_TEST% -Dalgorithm=sort/bubblesort %Args%
%ZIG_TEST% -Dalgorithm=sort/radixsort %Args%
%ZIG_TEST% -Dalgorithm=sort/mergesort %Args%
%ZIG_TEST% -Dalgorithm=sort/insertsort %Args%

rem Search
%ZIG_TEST% -Dalgorithm=search/bSearchTree %Args%
%ZIG_TEST% -Dalgorithm=search/rb %Args%

rem Threads
%ZIG_TEST% -Dalgorithm=threads/threadpool %Args%

rem Web
%ZIG_TEST% -Dalgorithm=web/httpClient %Args%
%ZIG_TEST% -Dalgorithm=web/httpServer %Args%
%ZIG_TEST% -Dalgorithm=web/tls1_3 %Args%

rem Add more...
