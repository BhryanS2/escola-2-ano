#include <stdio.h>

int main() {
  // read char transform to array of chars
  char c;
  int i = 0;
  char str[100];
  while ((c = getchar()) != '\n') {
    str[i] = c;
    i++;
  }
  str[i] = '\0';
  // print array of chars
  printf("%s\n", str);
  return 0;
}