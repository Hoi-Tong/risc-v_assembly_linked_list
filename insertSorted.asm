#---------------------------------------------------------------------------------------------#
insertSorted:
# Function to insert a new node into the given linkedlist in descending order
# Inputs: a1 = value of the node key
#	a0 = address of head of linked list; so if a0=0x10040000 points to empty list, then mem[0x10040000]=0
# Outputs: a0 = pointer to the final node in current sorted linked list
	mv s0, a0 # address of head
	mv s1, a1 # key of new node
	
	addi sp, sp, -12 #prepare to call function
	sw ra, 0(sp)
	sw s0, 4(sp)
	sw s1, 8(sp)

	jal newNode

	lw ra, 0(sp) #restore registers after calling function
	lw s0, 4(sp)
	lw s1, 8(sp)
	addi sp, sp, 12
	
	mv s2, a0 #s2= address of newNode
	#store register as sp
	# unload it
	lw t0, 0(s0) #t0= address of current
	mv t1, zero #t1= perv 
	
	while_loop: #first condition of while loop
	    bnez t0, greater #branch if t0!= 0
	    j continue #get out the loop
	
	greater: #second condition
	    lw t2, 0(t0) #t2= key of current
	    bgt t2, a1, move #branch to move
	    j continue #jump out the loop
	    
	move:
	    mv t1, t0 # t1/perv address= current addres
	    lw t0, 4(t0) # t0 = address of next
	    j while_loop #loop back
	
	continue:
    	    beqz t1, if_statement #branch if t1=0
    	    j else_statement #if if-statement condition not met, jump to else statement
    	    
    	if_statement: 
    	    sw t0, 4(s2) #save t0, s2 into memory
    	    sw s2, 0(s0) 
    	    j result #ignore the else-statement
    	    
    	else_statement:
    	    sw s2, 4(t1) #save s2, t0
    	    sw t0, 4(s2) 
    	   
    	
    	result:
    	#nothing	
    ret
    
