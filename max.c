int max(int *m, int count) {
      int largest = -99999;
      int i;
      for (i = 0; i < count; i++) {
          if (m[i] > largest) {
              largest = m[i];
          }
      }
      return largest;
 }
