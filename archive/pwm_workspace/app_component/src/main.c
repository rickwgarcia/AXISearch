#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"



// 1. Define the Base Address (Found in your xparameters.h after build)
// Check xparameters.h for the name: XPAR_MY_PWM_IP_0_BASEADDR
#define PWM_BASE_ADDR XPAR_MY_PWM_IP_0_BASEADDR 


// 2. Define our Register Offsets (Phase 1 logic)

#define REG_PERIOD_OFFSET 0x00
#define REG_DUTY_OFFSET   0x04
#define REG_CTRL_OFFSET   0x08



int main() {

    printf("--- Custom PWM Controller Online ---\n\r");

    // We'll set a constant period. 
    // At 100MHz, a period of 100,000 gives us a 1kHz PWM frequency.
    u32 period = 100000; 
    u32 duty = 0;
    int direction = 1; // 1 for brightening, 0 for dimming

    // Step A: Set the Period register
    Xil_Out32(PWM_BASE_ADDR + REG_PERIOD_OFFSET, period);

    // Step B: Enable the hardware via the Control Register (bit 0 = 1)
    Xil_Out32(PWM_BASE_ADDR + REG_CTRL_OFFSET, 0x1);

    while(1) {

        // Step C: Update Duty Cycle to change brightness
        Xil_Out32(PWM_BASE_ADDR + REG_DUTY_OFFSET, duty);


        // Breathing logic
        if (direction) {
            duty += 500;
            if (duty >= period) direction = 0;
        } else {
            duty -= 500;
            if (duty <= 0) direction = 1;
        }
        // Small delay so the human eye can see the change
        usleep(5000); 

    }

    return 0;

}