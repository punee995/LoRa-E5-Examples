/*
 * lm75_lib.h
 *
 *  Created on: May 23, 2021
 *      Author: punit
 */

#ifndef INC_LM75_LIB_H_
#define INC_LM75_LIB_H_

#include "main.h"
#include "i2c.h"

///*LM75 Address  fix: '1001' + A2 A1 A0 + 'Write/ Read'*/
//#define A2  0
//#define A1  0
//#define A0  0
//#define LM75_ADDRESS (0x48 | (A2 << 3) | (A1 << 2) | (A0 << 1))



/*Configuration register*/
#define  OS_F_QUE_queue_0       0 << 3      // (default value)
#define  OS_F_QUE_queue_2       1 << 3
#define  OS_F_QUE_queue_4       2 << 3
#define  OS_F_QUE_queue_6       3 << 3

#define  OS_POL_active_LOW      0 << 2      // (default value)
#define  OS_POL_active_HIGH     1 << 2

#define OS_COMP_INT_comparator  0 << 1      // (default value)
#define OS_COMP_INT_interrupt   1 << 1

#define SHUTDOWN_normal         0           // (default value)
#define SHUTDOWN_shutdown       1

#define Conf_register           (OS_F_QUE_queue_0 | OS_POL_active_LOW | OS_COMP_INT_comparator | SHUTDOWN_normal)

#define LM75_INVALID_TEMPERATURE	-1000.0f	// Just an arbritary value outside of the sensor limits


/*Get LM75 register information*/
//float LM75_getProdId(I2C_HandleTypeDef *hi2c, uint8_t addr);
float LM75_getTemperature(I2C_HandleTypeDef *hi2c, uint8_t addr);
float LM75_getTemperatureInFarenheit(I2C_HandleTypeDef *hi2c, uint8_t addr);
uint8_t LM75_getConfiguration(I2C_HandleTypeDef *hi2c, uint8_t addr);
float  LM75_getHysteresis(I2C_HandleTypeDef *hi2c, uint8_t addr);
float LM75_getOSThreshold(I2C_HandleTypeDef *hi2c, uint8_t addr);

/*set LM75 register*/
void LM75_setConfiguration(I2C_HandleTypeDef *hi2c, uint8_t addr,uint8_t config);
void LM75_setHysteresis(I2C_HandleTypeDef *hi2c, uint8_t addr,int16_t temperature);
void LM75_setOSThreshold(I2C_HandleTypeDef *hi2c, uint8_t addr,int16_t temperature);

void LM75_Shutdown(I2C_HandleTypeDef *hi2c, uint8_t addr);
void LM75_Wakeup(I2C_HandleTypeDef *hi2c, uint8_t addr);
_Bool LM75_isShutdown(I2C_HandleTypeDef *hi2c, uint8_t addr);

// osCompInt	:false	= comparator (default on boot)
//				:true 	= interrupt
_Bool LM75_getOsMode(I2C_HandleTypeDef *hi2c, uint8_t addr);
void LM75_setOsMode(I2C_HandleTypeDef *hi2c, uint8_t addr,_Bool osCompInt);

// osPol		:false	=  OS active LOW (default on boot)
//				:true 	=  OS active HIGH
_Bool LM75_getOsPol(I2C_HandleTypeDef *hi2c, uint8_t addr);
void LM75_setOsPol(I2C_HandleTypeDef *hi2c, uint8_t addr,_Bool osPol);


uint8_t LM75_getOsFaultQue(I2C_HandleTypeDef *hi2c, uint8_t addr);
void LM75_setOsFaultQue(I2C_HandleTypeDef *hi2c, uint8_t addr,uint8_t osPol);

#endif /* INC_LM75_LIB_H_ */
