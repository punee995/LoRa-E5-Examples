/*
 * lm75_lib.c
 *
 *  Created on: May 23, 2021
 *      Author: punit
 */
#include "lm75_lib.h"


uint8_t LM75_TEMP = 0;
uint8_t LM75_CONF = 1;
uint8_t LM75_THYST = 2;
uint8_t LM75_TOS = 3;
//uint8_t LM75_ID = 7;


uint8_t buf[4];
uint16_t neg_buf;
uint16_t pos_buf;


// Not Tested (for TI only)
//float LM75_getProdId(I2C_HandleTypeDef *hi2c, uint8_t addr){
//	if(HAL_I2C_Master_Transmit(hi2c, addr << 1 , LM75_ID, 1, 100) == HAL_OK ){
//		if(HAL_I2C_Master_Receive(hi2c, (addr << 1) | 0x01, buf, 1, 100) == HAL_OK){
//			return (float)((buf[0]) >> 4) + (buf[0] & 0x0F) /10.0f;
//		}
//	}
//	return LM75_INVALID_TEMPERATURE;
//}

float LM75_getTemperature(I2C_HandleTypeDef *hi2c, uint8_t addr){

	if (HAL_I2C_Master_Transmit(hi2c, addr << 1, &LM75_TEMP, 1, 100) == HAL_OK ){
		if(HAL_I2C_Master_Receive(hi2c, (addr << 1) | 0x01, buf, 2, 100) == HAL_OK){
			if( (buf[0] & 0x80) == 0x80){
				neg_buf = ~((buf[0] << 8 | buf[1])>> 5) + 1 ;	//2's compliment
				neg_buf &= 0x07FF; 	// zeroing 5 msb bits
				return (float)(-1 * neg_buf * 0.125);
			}
			else {
				return (float)(((buf[0] << 8) | buf[1]) >> 5)*0.125;
			}
		}
	}
	return LM75_INVALID_TEMPERATURE;
}

float LM75_getTemperatureInFarenheit(I2C_HandleTypeDef *hi2c, uint8_t addr){
	return LM75_getTemperature(hi2c,addr) * 1.8f + 32.0f;
}

uint8_t LM75_getConfiguration(I2C_HandleTypeDef *hi2c, uint8_t addr){
	if(HAL_I2C_Master_Transmit(hi2c, addr << 1, &LM75_CONF, 1, 100) == HAL_OK ){
		if(HAL_I2C_Master_Receive(hi2c, (addr << 1) | 0x01, buf, 1, 100) == HAL_OK){
			return buf[0];
		}
	}
	return 0;
}

float LM75_getOSThreshold(I2C_HandleTypeDef *hi2c, uint8_t addr){
	if(HAL_I2C_Master_Transmit(hi2c, addr << 1, &LM75_TOS, 1, 100) == HAL_OK ){
		if(HAL_I2C_Master_Receive(hi2c, (addr << 1) | 0x01, buf, 2, 100) == HAL_OK){
			if( (buf[0] & 0x80) == 0x80){
				neg_buf = ~((buf[0] << 8 | buf[1])>> 7) + 1 ;	//2's compliment
				neg_buf &= 0x01FF; 	// zeroing 7 msb bits
				return (float)(-1 * neg_buf * 0.5);
			}
			else {
				return (float)(((buf[0] << 8) | buf[1]) >> 7)*0.5;
			}
		}
	}
	return LM75_INVALID_TEMPERATURE;
}

float  LM75_getHysteresis(I2C_HandleTypeDef *hi2c, uint8_t addr){
	if(HAL_I2C_Master_Transmit(hi2c, addr << 1, &LM75_THYST, 1, 100) == HAL_OK ){
		if(HAL_I2C_Master_Receive(hi2c, (addr << 1) | 0x01, buf, 2, 100) == HAL_OK){
			if((buf[0] & 0x80) == 0x80){
				neg_buf = ~((buf[0] << 8 | buf[1])>> 7) + 1 ;	//2's compliment
				neg_buf &= 0x01FF; 	// zeroing 7 msb bits
				return (float)(-1 * neg_buf * 0.5);
			}
			else {
				return (float)(((buf[0] << 8) | buf[1]) >> 7)*0.5;
			}
		}
	}
	return LM75_INVALID_TEMPERATURE;
}


void LM75_setConfiguration(I2C_HandleTypeDef *hi2c, uint8_t addr,uint8_t config){
	buf[0] = LM75_CONF;
	buf[1] = config & 0x1F;

	HAL_I2C_Master_Transmit(hi2c, addr << 1, &buf, 2, 100);
}

void LM75_setHysteresis(I2C_HandleTypeDef *hi2c, uint8_t addr,int16_t temperature){

	temperature = (temperature / 0.5);
	buf[0] = LM75_THYST;

	//check if temperature is negative.
	if(temperature < 0){
		neg_buf = temperature << 7;
		buf[2] = (neg_buf) & 0xff;
		buf[1] = (neg_buf >> 8);
	}
	else {
		pos_buf = (uint16_t)temperature << 7;
		buf[2] = (pos_buf) & 0xff;
		buf[1] = (pos_buf >> 8);
	}

	HAL_I2C_Master_Transmit(hi2c, addr << 1, &buf, 3, 100);
}


void LM75_setOSThreshold(I2C_HandleTypeDef *hi2c, uint8_t addr,int16_t temperature){

	temperature = (temperature / 0.5);
	buf[0] = LM75_TOS;

	//check if temperature is negative.
	if(temperature < 0){
		neg_buf = temperature << 7;
		buf[2] = (neg_buf) & 0xff;
		buf[1] = (neg_buf >> 8);
	}
	else {
		pos_buf = (uint16_t)temperature << 7;
		buf[2] = (pos_buf) & 0xff;
		buf[1] = (pos_buf >> 8);
	}

	HAL_I2C_Master_Transmit(hi2c, addr << 1, &buf, 3, 100);
}


void LM75_Shutdown(I2C_HandleTypeDef *hi2c, uint8_t addr){
	buf[4] = LM75_getConfiguration(hi2c, addr);
	LM75_setConfiguration(hi2c, addr, ((buf[4] & 0xFE)| 0x01));
}
void LM75_Wakeup(I2C_HandleTypeDef *hi2c, uint8_t addr){
	buf[4] = LM75_getConfiguration(hi2c, addr);
	LM75_setConfiguration(hi2c, addr, ((buf[4] & 0xFE)| 0x00));
}
_Bool LM75_isShutdown(I2C_HandleTypeDef *hi2c, uint8_t addr){
	buf[4] = LM75_getConfiguration(hi2c, addr);
	return buf[4] & 0x01;
}
