# Angel Chen
# Release 1: Research Web Servers

* What are some of the key design philosophies of the Linux operating system?
The Linux system was designed for computer literate people. It allows you complete control over the operating system and lets you modify whatever you want.

* In your own words, what is a VPS (virtual private server)? What according to your research, are the advantages of using a VPS?
A virtual private server is a is a virtual machine that runs its own copy of an operating system separately from a physical machine. 

The advantages of a VPS are the following: 
	* it is quick to spin up a new virtual server
	* it is generally cheaper than having a dedicated physical server
	* it is easily scalable

* Why is it considered a bad idea to run programs as the root user on a Linux system?
It is considered a bad idea due to security reasons. The root user has complete access to every part of a Linux system and does not need any special permissions to run anything. You could easily delete an entire website or drop a database without running into any warning messages because a root user has complete control. By running programs that have been manually granted the ability to do so, we can avoid the possibility of this by only granting the minimum required amount of permissions to accomplish whatever tasks neccessary.