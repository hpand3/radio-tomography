#ifndef SIMPLEUART_H
#define SIMPLEUART_H

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
 * INCLUDES
 */

/*********************************************************************
*  EXTERNAL VARIABLES
*/

/*********************************************************************
 * CONSTANTS
 */
#define CHARALLOWED     50
/*********************************************************************
 * MACROS
 */

/*********************************************************************
 * FUNCTIONS
 */

/*
 * Task creation function for the Simple UART.
 */
extern void Simple_UART_createTask(void);

/*
 * Printing function
 */
extern void SU_printf(Char* printsr,...);


/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* SIMPLEUART_H */
