/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ST7920_SERIAL.h"
#include "delay.h"
#include "bitmap.h"
#include "u8g2.h"
#include "icons.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */


/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
static u8g2_t u8g2;


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
uint8_t u8g2_gpio_and_delay_stm32(U8X8_UNUSED u8x8_t *u8x8, U8X8_UNUSED uint8_t msg, U8X8_UNUSED uint8_t arg_int, U8X8_UNUSED void *arg_ptr);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */

  //Enable 3V3 For Sensor
  HAL_GPIO_WritePin(EN_3V3_GPIO_Port, EN_3V3_Pin, GPIO_PIN_SET);
  HAL_Delay(500);

  //
  u8g2_Setup_st7920_s_128x64_f(&u8g2, U8G2_R0, u8x8_byte_4wire_sw_spi, u8g2_gpio_and_delay_stm32); // init u8g2 structure
  u8g2_InitDisplay(&u8g2);
  u8g2_SetPowerSave(&u8g2, 0); // wake up display

  u8g2_ClearBuffer(&u8g2);
  u8g2_SetFont(&u8g2, u8g2_font_6x12_tr);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  u8g2_ClearBuffer(&u8g2);
	  u8g2_DrawXBM(&u8g2, 34, 2, 60, 60, hourglass_full);
	  u8g2_SendBuffer(&u8g2);
	  HAL_Delay(1000);

	  u8g2_ClearBuffer(&u8g2);
	  u8g2_DrawXBM(&u8g2, 34, 2, 60, 60, hourglass_half);
	  u8g2_SendBuffer(&u8g2);
	  HAL_Delay(1000);

	  u8g2_ClearBuffer(&u8g2);
	  u8g2_DrawXBM(&u8g2, 34, 2, 60, 60, hourglass_empty);
	  u8g2_SendBuffer(&u8g2);
	  HAL_Delay(1000);

	  // set font and write hello world
	  u8g2_ClearBuffer(&u8g2);
	  u8g2_SetFont(&u8g2, u8g2_font_6x12_tr);
	  u8g2_DrawStr(&u8g2, 2,17,"Hello World!");
	  u8g2_SendBuffer(&u8g2);
	  HAL_Delay(5000);

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure LSE Drive Capability
  */
  HAL_PWR_EnableBkUpAccess();
  __HAL_RCC_LSEDRIVE_CONFIG(RCC_LSEDRIVE_LOW);
  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSE|RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_11;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the SYSCLKSource, HCLK, PCLK1 and PCLK2 clocks dividers
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK3|RCC_CLOCKTYPE_HCLK
                              |RCC_CLOCKTYPE_SYSCLK|RCC_CLOCKTYPE_PCLK1
                              |RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.AHBCLK3Divider = RCC_SYSCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
uint8_t u8g2_gpio_and_delay_stm32(U8X8_UNUSED u8x8_t *u8x8, U8X8_UNUSED uint8_t msg, U8X8_UNUSED uint8_t arg_int, U8X8_UNUSED void *arg_ptr)
{
		switch(msg){

		//Function which implements a delay, arg_int contains the amount of ms
		case U8X8_MSG_GPIO_AND_DELAY_INIT:
			MX_GPIO_Init();
		break;
		//Function which implements a delay, arg_int contains the amount of ms
		case U8X8_MSG_DELAY_MILLI:
		HAL_Delay(arg_int);
		break;
		//Function which delays 10us
		case U8X8_MSG_DELAY_10MICRO:
		delay_us(10);
		break;
		//Function which delays 100ns
		case U8X8_MSG_DELAY_100NANO:
		__NOP();

		break;
		//Function to define the logic level of the clockline
		case U8X8_MSG_GPIO_SPI_CLOCK:
			if (arg_int) ST7920_SCLK_1;
			else ST7920_SCLK_0;

		break;
		//Function to define the logic level of the data line to the display
		case U8X8_MSG_GPIO_SPI_DATA:
			if (arg_int) ST7920_SID_1;
			else ST7920_SID_0;

		break;

		// Function to define the logic level of the CS line
		case U8X8_MSG_GPIO_CS1:
			if (arg_int) ST7920_CS_1	;
			else ST7920_CS_0;

		break;
		//Function to define the logic level of the Data/ Command line
		case U8X8_MSG_GPIO_DC:

		break;
		//Function to define the logic level of the RESET line
		case U8X8_MSG_GPIO_RESET:
			if (arg_int) ST7920_RST_1;
			else ST7920_RST_0;

		break;

		default:
			return 0; //A message was received which is not implemented, return 0 to indicate an error
	}

	return 1; // command processed successfully.
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

