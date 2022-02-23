################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/adc_if.c \
../Core/Src/dma.c \
../Core/Src/main.c \
../Core/Src/rtc.c \
../Core/Src/stm32_lpm_if.c \
../Core/Src/stm32wlxx_hal_msp.c \
../Core/Src/stm32wlxx_it.c \
../Core/Src/subghz.c \
../Core/Src/sys_app.c \
../Core/Src/sys_debug.c \
../Core/Src/sys_sensors.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32wlxx.c \
../Core/Src/timer_if.c \
../Core/Src/usart.c \
../Core/Src/usart_if.c 

OBJS += \
./Core/Src/adc.o \
./Core/Src/adc_if.o \
./Core/Src/dma.o \
./Core/Src/main.o \
./Core/Src/rtc.o \
./Core/Src/stm32_lpm_if.o \
./Core/Src/stm32wlxx_hal_msp.o \
./Core/Src/stm32wlxx_it.o \
./Core/Src/subghz.o \
./Core/Src/sys_app.o \
./Core/Src/sys_debug.o \
./Core/Src/sys_sensors.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32wlxx.o \
./Core/Src/timer_if.o \
./Core/Src/usart.o \
./Core/Src/usart_if.o 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/adc_if.d \
./Core/Src/dma.d \
./Core/Src/main.d \
./Core/Src/rtc.d \
./Core/Src/stm32_lpm_if.d \
./Core/Src/stm32wlxx_hal_msp.d \
./Core/Src/stm32wlxx_it.d \
./Core/Src/subghz.d \
./Core/Src/sys_app.d \
./Core/Src/sys_debug.d \
./Core/Src/sys_sensors.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32wlxx.d \
./Core/Src/timer_if.d \
./Core/Src/usart.d \
./Core/Src/usart_if.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -c -I../Core/Inc -I"D:/OneDrive/Boards/LoRa-E5/LoRa_E5_WAN/Drivers/BSP/STM32WLxx_Nucleo" -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../LoRaWAN/App -I../LoRaWAN/Target -I../Utilities/trace/adv_trace -I../Utilities/misc -I../Utilities/sequencer -I../Utilities/timer -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../Middlewares/Third_Party/SubGHz_Phy -I../Middlewares/Third_Party/SubGHz_Phy/stm32_radio_driver -I../Middlewares/Third_Party/LoRaWAN/Crypto -I../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../Middlewares/Third_Party/LoRaWAN/Mac -I../Middlewares/Third_Party/LoRaWAN/LmHandler -I../Middlewares/Third_Party/LoRaWAN/Utilities -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/adc_if.d ./Core/Src/adc_if.o ./Core/Src/dma.d ./Core/Src/dma.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/rtc.d ./Core/Src/rtc.o ./Core/Src/stm32_lpm_if.d ./Core/Src/stm32_lpm_if.o ./Core/Src/stm32wlxx_hal_msp.d ./Core/Src/stm32wlxx_hal_msp.o ./Core/Src/stm32wlxx_it.d ./Core/Src/stm32wlxx_it.o ./Core/Src/subghz.d ./Core/Src/subghz.o ./Core/Src/sys_app.d ./Core/Src/sys_app.o ./Core/Src/sys_debug.d ./Core/Src/sys_debug.o ./Core/Src/sys_sensors.d ./Core/Src/sys_sensors.o ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/system_stm32wlxx.d ./Core/Src/system_stm32wlxx.o ./Core/Src/timer_if.d ./Core/Src/timer_if.o ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart_if.d ./Core/Src/usart_if.o

.PHONY: clean-Core-2f-Src

