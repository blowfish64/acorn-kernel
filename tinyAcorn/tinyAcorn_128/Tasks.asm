/*
BARE BONE app based on 3 tasks
Look at https://github.com/sergei-iliev/acorn-kernel-samples 
for working demos
*/

.cseg



;equal to task's ID
.set dpc_index1=1
	 

Task_1:
   
main1:
nop
_SUSPEND_TASK
rjmp main1  
ret



.set dpc_index2=2
Task_2:	
	
main2: 
nop
_SLEEP_TASK 4
rjmp main2  	
ret

;equal to task's ID
.set dpc_index3=3
Task_3:	
nop
main3:
nop
_SLEEP_TASK 3
rjmp main3  	
ret