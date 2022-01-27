﻿# Remote Access Tool Documentation

The RemoteAccessTool is a useful tool for testing purposes. It allows the user to control any node in a Skip Graph provided its IP address and RMI port are available. 

# Usage
Upon running the tool, the user is prompted to enter the IP address along with the port of the node the user wishes to connect to. 

```
Enter IP address along with port (x to exit)
xxx.xxx.xxx.xxx:xxxx
```

After entering a valid IP and successfully connecting to the respective node, the user now has access to the node and the following menu of operations will appear:

```java
Address of node being controlled: 172.16.104.46:1099
Name ID: 00101110001110011111 Number ID: 189343
Choose a query by entering it's code and then press Enter
1-Insert Transaction
2-Insert Block
3-Search By Name ID
4-Search By Number ID
5-Print the Lookup Table
6-Print data
7-Traverse
8-Perform latency testing
9-Exit
```

## Functions

### Insert Transaction/Block
This option allows the user to insert a transaction and/or block with the current node as the owner by providing the necessary details.

### Print Lookup table
This option will print out all the neighbors of the current node

### Print Data
This will print all the data nodes that belong to the current node.

### Traverse
This option makes it very convenient to traverse through the skip graph. Upon choosing this option, the following options will appear:
```
This is the current lookup table: 


8 xxxx	9 xxxx	
6 xxxx	7 xxxx	
4 xxxx	5 xxxx	
2 xxxx	3 xxxx	
0 xxxx	1 xxxx	
Enter the number of the node you want to connect to: (invalid number to abort)
```
This makes it very easy to switch control to any of the neighboring nodes. 

### Perform latency testing
This option will prompt the user to input the number of pinging attempts to perform and how many chunks to split the attempts to. The method will contact all the nodes and have them ping each other. The results will be outputed as a CSV file in the source folder.

