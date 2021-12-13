# example program 3 for sorting algorithms, written by Drew Martin
# This is the insertion sort program:
# insertion sorting on vector of elements, tested with int
insertionsort.func <- function(elem.vec) { 
  for (x in 2:length(elem.vec)) {
    thekey = elem.vec[x] 
    y = x - 1
    while (y > 0 && elem.vec[y] > thekey) {
      elem.vec[(y + 1)] = elem.vec[y]
      y = y - 1
    }
    elem.vec[(y + 1)] = thekey
  }
  return(elem.vec)
}

print("Insertion sort results:")
print(insertionsort.func(c(6,3,2,8,5)))
# when ran outputs [1] 2 3 5 6 8
# -----------------------------------------------------
# This is the merge sort in R:
# a merge helper function for mergesort.func to call
helpmerge.func <-function(leftArr, rightArr) {
  li <- numeric(length(leftArr) + length(rightArr))
  indexL <- 1; indexR <- 1; x <- 1;
  for(x in 1:length(li)) {
    if((indexL <= length(leftArr) && leftArr[indexL] < rightArr[indexR]) || indexR > length(rightArr)) {
      li[x] <- leftArr[indexL]
      indexL <- indexL + 1
    } else {
      li[x] <- rightArr[indexR]
      indexR <- indexR + 1
    }
  }
  return(li)
}
# merge sorting function
mergesort.func <- function(elem.vec) {
  if(length(elem.vec) > 1) { 
    x <- ceiling(length(elem.vec) / 2)
    leftArr <- mergesort.func(elem.vec[1:x])
    rightArr <- mergesort.func(elem.vec[(x + 1):length(elem.vec)])
    helpmerge.func(leftArr, rightArr)
  } 
  else {
    return(elem.vec)
  }
}

print("Merge Sort Results:")
print(mergesort.func(c(6,3,2,8,5)))
# when ran outputs [1] 2 3 5 6 8