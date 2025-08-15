

#---------------------------------------------------------------------------------------------#
print_list:
# Function to traverse the linked list and print the values
# Inputs: a1 = head of the linked list


    beqz a1, nothing_list # if list is empty
    
    loop:
        beqz a1, last_element # branch if a1 is 0, it means it is the last element
        lw t1, 0(a1) #get head's value from a1 (it is the same address of next key)
        lw t2, 4(a1) #get address that the key point at
        #la t3, t2 #get address with value t2
        print_int(t1)
        print_str(comma_space)
        mv a1, t2 #a1=t2
    
        j loop
        #print_str(newline)
        
    nothing_list: #list is empty
        print_str(empty_list_msg) #print the message
        print_str(endoflistmsg)
        print_str(newline)
        j out
        
        
    last_element: #on the last element of the list
        print_str(endoflistmsg) #print the message
        print_str(newline)
        j out
    
    out: #nothing
    
    ret
