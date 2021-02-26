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



# seconds.c file

```c
static struct file_operations proc_ops = {
    .owner = THIS_MODULE,
    .read = proc_read,
};

static ssize_t proc_read(struct file *file, char __user *usr_buf, size_t count, loff_t *pos)
{
    char buffer[BUFFER_SIZE];
    int rv = 0;
    static int completed = 0;
    if (completed) {
        completed = 0;
        return 0;
    }
    completed = 1;
    rv = sprintf(buffer, "Current value of jiffies: %lu\n", jiffies);
    raw_copy_to_user(usr_buf, buffer, rv);
    return rv;
}
```
