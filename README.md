# risc-v_assembly_linked_list
**RISC-V Linked List Implementation**

This repository contains a set of RISC-V assembly files that implement a singly linked list data structure. The project includes functions for creating new nodes, inserting nodes into a sorted list, merging two sorted lists, and printing the contents of a list. The code is written for the RISC-V Instruction Set Architecture (ISA) and can be executed using a compatible simulator.

**Project Overview**

The primary goal of this project is to demonstrate fundamental data structure concepts, specifically linked lists, using low-level RISC-V assembly language. The implementation focuses on key linked list operations:

**-** newNode.asm: A function to dynamically allocate memory for a new node and initialize its key and next pointer.

**-** insertSorted.asm: A function to insert a new node into a given linked list while maintaining a descending sorted order.

**-** mergeLinkedLists.asm: A function that merges two sorted linked lists into a single sorted list.

**-** print_list.asm: A utility function to traverse a linked list and print the values of each node.

**-** lab4_testbench.asm: The main test file that orchestrates the creation of two linked lists (A and B), populates them with data, prints them, merges them, and then prints the resultant list.

**Usage**

This project is intended to be compiled and run on a RISC-V simulator. To use the code, you would typically include all the .asm files in your project and execute the lab4_testbench.asm file. The testbench file demonstrates the correct usage of the other functions.

**Files**

**-** newNode.asm: Contains the newNode function.

**-** insertSorted.asm: Contains the insertSorted function.

**-** mergeLinkedLists.asm: Contains the mergeLinkedLists function.

**-** print_list.asm: Contains the print_list function.

**-** lab4_testbench.asm: The main driver program that tests all the functions. It also includes macros for printing strings and integers, as well as a createHead function.

**How It Works**

The linked list nodes are defined with a size of 8 bytes: 4 bytes for the integer key and 4 bytes for the address of the next node. The sbrk system call is used for dynamic memory allocation to create new nodes. The insertSorted and mergeLinkedLists functions use standard linked list traversal and pointer manipulation to achieve their goals. The lab4_testbench file sets up the entire process and provides a clear example of how the functions interact.
