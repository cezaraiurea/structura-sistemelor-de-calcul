  #include <stdio.h>
#include "platform.h"
#include <xgpio.h>
#include "xparameters.h"
#include "sleep.h"

char identificare_tastatura(int rand, int coloana) {
    const char tastatura[4][4] = {
        {'1', '2', '3', 'A'},
        {'4', '5', '6', 'B'},
        {'7', '8', '9', 'C'},
        {'0', 'F', 'E', 'D'}
    };
    return tastatura[rand][coloana];
}

int main() {
    XGpio gpio;
    int rand, coloana;
    char tasta;
    int valoriRanduri[4] = {0b1110, 0b1101, 0b1011, 0b0111};
    int valoriColoane[4] = {0b1110, 0b1101, 0b1011, 0b0111}; 
    int colVal;

    init_platform();
    XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_BASEADDR);
    XGpio_SetDataDirection(&gpio, 1, 0x0); // randurile ca iesire
    XGpio_SetDataDirection(&gpio, 2, 0xF); // coloanele ca intrare


    while (1) {
        for (rand = 0; rand < 4; rand++) {
            XGpio_DiscreteWrite(&gpio, 1, valoriRanduri[rand]);
            usleep(1000);  

            colVal = XGpio_DiscreteRead(&gpio, 2);

            
            for (coloana = 0; coloana < 4; coloana++) {
                if (colVal == valoriColoane[coloana]) {
                    tasta = identificare_tastatura(rand, coloana);
                    printf("Tasta apăsată: %c\r\n", tasta);

                     
                    while (XGpio_DiscreteRead(&gpio, 2) != 0xF);
                    break;
                }
            }
        }
        usleep(20000); 
    }

    cleanup_platform();
    return 0;
}
