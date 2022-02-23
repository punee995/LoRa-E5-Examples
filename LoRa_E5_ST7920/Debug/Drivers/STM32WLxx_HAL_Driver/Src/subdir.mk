################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_cortex.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma_ex.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_exti.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash_ex.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_gpio.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr_ex.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc_ex.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim.c \
../Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim_ex.c 

OBJS += \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_cortex.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma_ex.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_exti.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash_ex.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_gpio.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr_ex.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc_ex.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim.o \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim_ex.o 

C_DEPS += \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_cortex.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma_ex.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_exti.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash_ex.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_gpio.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr_ex.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc_ex.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim.d \
./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32WLxx_HAL_Driver/Src/%.o: ../Drivers/STM32WLxx_HAL_Driver/Src/%.c Drivers/STM32WLxx_HAL_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../Drivers/u8g2/cscr -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-STM32WLxx_HAL_Driver-2f-Src

clean-Drivers-2f-STM32WLxx_HAL_Driver-2f-Src:
	-$(RM) ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_cortex.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_cortex.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma_ex.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_dma_ex.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_exti.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_exti.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash_ex.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_flash_ex.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_gpio.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_gpio.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr_ex.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_pwr_ex.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc_ex.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_rcc_ex.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim.o ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim_ex.d ./Drivers/STM32WLxx_HAL_Driver/Src/stm32wlxx_hal_tim_ex.o

.PHONY: clean-Drivers-2f-STM32WLxx_HAL_Driver-2f-Src

