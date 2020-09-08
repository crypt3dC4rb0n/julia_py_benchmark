# Benchmark done on a set of 4 images of different resolutions

<br>

**Results based of on Julia v1.5.1 release**

<br>

##### Julia built in

```
  memory estimate:  45.36 MiB
  allocs estimate:  814
  --------------
  minimum time:     172.970 ms (0.24% GC)
  median time:      179.285 ms (0.23% GC)
  mean time:        178.631 ms (0.24% GC)
  maximum time:     187.034 ms (0.23% GC)
  --------------
  samples:          28
  evals/sample:     1


```

<br>

##### Julia Loop

```
  memory estimate:  45.36 MiB
  allocs estimate:  838
  --------------
  minimum time:     170.015 ms (0.26% GC)
  median time:      170.599 ms (0.26% GC)
  mean time:        171.115 ms (0.26% GC)
  maximum time:     177.196 ms (0.25% GC)
  --------------
  samples:          30
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
