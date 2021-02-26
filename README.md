# jiffies-project
This assignment will involve designing two kernel modules:

1. Design a kernel module that creates a /proc file named /proc/jiffies that reports the current value of
jiffies when the /proc/jiffies file is read, such as with the command
cat /proc/jiffies
Be sure to remove /proc/jiffies when the module is removed.
2. Design a kernel module that creates a proc file named /proc/seconds that reports the number of elapsed
seconds since the kernel module was loaded. This will involve using the value of jiffies as well as the HZ
rate. When a user enters the command
cat /proc/seconds
your kernel module will report the number of seconds that have elapsed sinc

# Environment 
clang version 3.8.0-2ubuntu4

OS: Ubuntu 18.04 using VirtualBox



# makeFile 

"""
obj-m += seconds.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
"""


