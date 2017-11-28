#include <stdio.h>
#include <math.h>
#include <arm_neon.h>

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

int  max(int *m,int count);

int main() {
	int nums[5] = {18,3,1,0,1};
	max(nums, 5);    
 }
