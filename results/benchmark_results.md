# Benchmark done on a set of 4 images of different resolutions

**Result based of on Julia v1.5.1 release**
<br>

##### Julia built in

```
  memory estimate:  423.00 MiB
  allocs estimate:  869
  --------------
  minimum time:     463.793 ms (2.48% GC)
  median time:      471.289 ms (3.76% GC)
  mean time:        489.838 ms (6.07% GC)
  maximum time:     640.081 ms (27.37% GC)
  --------------
  samples:          11
  evals/sample:     1

```

<br>

##### Julia Loop

```
  memory estimate:  423.00 MiB
  allocs estimate:  869
  --------------
  minimum time:     460.458 ms (2.60% GC)
  median time:      475.485 ms (3.26% GC)
  mean time:        503.001 ms (7.19% GC)
  maximum time:     741.515 ms (29.89% GC)
  --------------
  samples:          10
  evals/sample:     1

```

<br>

##### Python Loop

```
  memory estimate:  384 bytes
  allocs estimate:  14
  --------------
  minimum time:     31.113 s (0.00% GC)
  median time:      31.113 s (0.00% GC)
  mean time:        31.113 s (0.00% GC)
  maximum time:     31.113 s (0.00% GC)
  --------------
  samples:          1
  evals/sample:     1

```

<br>

##### Python Numpy

```
  memory estimate:  384 bytes
  allocs estimate:  14
  --------------
  minimum time:     70.268 ms (0.00% GC)
  median time:      71.177 ms (0.00% GC)
  mean time:        72.127 ms (0.00% GC)
  maximum time:     98.836 ms (0.00% GC)
  --------------
  samples:          70
  evals/sample:     1

```

<br>

##### Python Opencv

```
  memory estimate:  384 bytes
  allocs estimate:  14
  --------------
  minimum time:     71.858 ms (0.00% GC)
  median time:      76.929 ms (0.00% GC)
  mean time:        80.051 ms (0.00% GC)
  maximum time:     101.525 ms (0.00% GC)
  --------------
  samples:          63
  evals/sample:     1

```

<br>

### Summary

- **Julia vs Opencv vs Numpy**
  <br>
  <br>
  As you can see, the winners of this benchmark where python's Opencv and Numpy (though the results varied based on the
  resolutions of the images, both had almost similar results).

  This doesn't mean that Julia is under performing compared to python, it's that both Python's Numpy and OpenCV are
  heavily optimized libraries specifically designed to perform such computationally expensive tasks. And julia was able
  to perform as close to Numpy in some tasks.

<br>

- **Julia loop vs Python loop**
  <br>
  <br>
  From this benchmark result, you can clearly see that Julia certainly performed 40x better than python
