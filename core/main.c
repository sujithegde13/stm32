#include "main.h"

#define USART3_BASE 0x40004800UL
#define USART3_ISR  (*(volatile uint32_t*)(USART3_BASE + 0x1C))
#define USART3_TDR  (*(volatile uint32_t*)(USART3_BASE + 0x28))

static void delay(volatile uint32_t t)
{
    while(t--) __asm("nop");
}

void uart_send_char(char c)
{
    while(!(USART3_ISR & (1 << 7)));
    USART3_TDR = c;
}

void uart_print(const char *s)
{
    while(*s)
        uart_send_char(*s++);
}

int main(void)
{
    while(1)
    {
        uart_print("Hello world\r\n");
        delay(8000000);
    }
}
