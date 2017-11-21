#include <stdio.h>
#include <stdlib.h>

 int max(int *m, int count) {
      int largest = &m[0];
      int i;
      for (i = 0; i < count; i++) {
          if (&m[i] > largest) {
              largest = m[i];
          }
      }
      return largest;
 }
