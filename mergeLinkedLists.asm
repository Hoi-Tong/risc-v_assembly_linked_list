#---------------------------------------------------------------------------------------------#
mergeLinkedLists:
#Function to merge the 2 sorted lists together and the resultant list is also sorted
#Inputs: a0 = address of head of 1st linked list; so if a0=0x10040000 points to empty list, then mem[0x10040000]=0
#	a1 = = address of head of 2nd linked list;
#Output: the first linked contains the combined elements of 1st and second lists sorted
	
	mv s0, a0 #move the arguements into s0, s1
	mv s1, a1
	lw t1, 0(a1) #t1= value of head of 2nd linked list, same as address of the next key
	

	while_loop2:
		beqz t1, out2 #branch if t1 = 0
		mv a0, s0 #a0 to the address of the first linklist
		lw a1, 0(t1)#set a1 to the value that is going to add into the linklist
		
		addi sp, sp, -16 #ready to call function
		sw ra, 0(sp)
		sw s0, 4(sp)
		sw s1, 8(sp)
		sw t1, 12(sp)
			
		jal insertSorted
		
		lw ra, 0(sp) #after calling the function
		lw s0, 4(sp)
		lw s1, 8(sp)
		lw t1, 12(sp) #t1 is address of current node
		addi sp, sp, 16
		
		
		lw t1, 4(t1)# the value of t1+4 
		j while_loop2 #loop back
		
	out2: #nothing

	


	
	ret
