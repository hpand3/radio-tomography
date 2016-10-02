/* XDCtools Header files */
#include <xdc/std.h>
#include <xdc/runtime/System.h>
#include <xdc/cfg/global.h>

/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Mailbox.h>

/* TI-RTOS Header files */
#include <ti/drivers/PIN.h>
#include <ti/drivers/UART.h>
#include <string.h>

/* Example/Board Header files */
#include "Board.h"

#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include "simple_UART.h"

#define TIMEOUT			10  /* timeout, in system ticks */
#define TASKSTACKSIZE   768

Task_Struct task0Struct;
Char task0Stack[TASKSTACKSIZE];

typedef struct MsgObj {
    Char printstr[CHARALLOWED];   /* writer string */
    Int charlen;
} MsgObj, *Msg;

/*
 *  ======== echoFxn ========
 */
void echoFxn(UArg arg0, UArg arg1)
{
    MsgObj msg;
    UART_Handle uart;
    UART_Params uartParams;
    const char echoPrompt[] = "\fInitialising UART...\r\n";

    /* Create a UART with data processing off. */
    UART_Params_init(&uartParams);
    uartParams.writeDataMode = UART_DATA_BINARY;
    uartParams.readDataMode = UART_DATA_BINARY;
    uartParams.readReturnMode = UART_RETURN_FULL;
    uartParams.readEcho = UART_ECHO_OFF;
    uartParams.baudRate = 9600;
    uart = UART_open(Board_UART0, &uartParams);

    if (uart == NULL) {
        System_abort("Error opening the UART");
    }

    UART_write(uart, echoPrompt, sizeof(echoPrompt));

    /* Loop forever echoing */
    while (1) {
    	/* wait for mailbox to be posted by writer() */
		if (Mailbox_pend(mbx0, &msg, TIMEOUT) == 1) {
			UART_write(uart, msg.printstr, msg.charlen);
		}
    }
}

char *convert(unsigned int num, int base)
{
    static char Representation[]= "0123456789ABCDEF";
    static char buffer[50];
    char *ptr;

    ptr = &buffer[49];
    *ptr = '\0';

    do
    {
        *--ptr = Representation[num%base];
        num /= base;
    } while(num != 0);

    return(ptr);
}

void SU_printf(Char* printsr, ...) {
	char *travel;
	MsgObj msg;
	unsigned int i;
	int count = 0;

	//Module 1: Initializing SU_printf's arguments
//	va_list arg;
//	va_start(arg, format);

	for(travel = printsr; *travel != '\0'; travel++)
	{
		msg.printstr[count] = *travel;
		count++;

//		//Module 2: Fetching and executing arguments
//		switch(*travel)
//		{
//			case 'c' : i = va_arg(arg,int);     //Fetch char argument
//						final[count] = i;
//						break;
//
//			case 'd' : i = va_arg(arg,int);         //Fetch Decimal/Integer argument
//						if(i < 0)
//						{
//							i = -i;
//							final[count] = '-';
//						}
//						puts(convert(i,10));
//						break;
//
//			case 'o': i = va_arg(arg,unsigned int); //Fetch Octal representation
//						puts(convert(i,8));
//						break;
//
//			case 's': s = va_arg(arg,char *);       //Fetch string
//						puts(s);
//						break;
//
//			case 'x': i = va_arg(arg,unsigned int); //Fetch Hexadecimal representation
//						puts(convert(i,16));
//						break;
//		}
	}

	//Module 3: Closing argument list to necessary clean-up
//	va_end(arg);
	msg.charlen = count;
	/* enqueue message */
	Mailbox_post(mbx0, &msg, TIMEOUT);
}

void Simple_UART_createTask(void) {
	Task_Params taskParams;
    /* Construct BIOS objects */
    Task_Params_init(&taskParams);
    taskParams.stackSize = TASKSTACKSIZE;
    taskParams.stack = &task0Stack;
    Task_construct(&task0Struct, (Task_FuncPtr)echoFxn, &taskParams, NULL);
}