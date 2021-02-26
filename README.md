# jiffies-project
This assignment will involve designing two kernel modules:
1. Jiffies: Design a kernal module that reports the current value of jiffies when the /proc/jiffies file is read, such as with the command
cat /proc/jiffies
2. Seconds: Design a kernel module that creates a proc file named /proc/seconds that reports the number of elapsed
seconds since the kernel module was loaded. When a user enters the command
cat /proc/seconds
your kernel module will report the number of seconds that have elapsed.

# Environment 
clang version 3.8.0-2ubuntu4

OS: Ubuntu 18.04 using VirtualBox



# makeFile 

```c

obj-m += seconds.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```


# Output
Jiffies Output:

![Jiffies Output](https://raw.githubusercontent.com/kr1stopher/images/main/Screenshot%20from%202021-02-26%2012-20-09.png)

Seconds Output:

![Jiffies Output](https://raw.githubusercontent.com/kr1stopher/images/main/Screenshot%20from%202021-02-26%2012-58-54.png)
