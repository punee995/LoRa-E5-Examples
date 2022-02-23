################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/u8g2/cscr/u8g2_bitmap.c \
../Drivers/u8g2/cscr/u8g2_box.c \
../Drivers/u8g2/cscr/u8g2_buffer.c \
../Drivers/u8g2/cscr/u8g2_circle.c \
../Drivers/u8g2/cscr/u8g2_cleardisplay.c \
../Drivers/u8g2/cscr/u8g2_d_memory.c \
../Drivers/u8g2/cscr/u8g2_d_setup.c \
../Drivers/u8g2/cscr/u8g2_font.c \
../Drivers/u8g2/cscr/u8g2_fonts.c \
../Drivers/u8g2/cscr/u8g2_hvline.c \
../Drivers/u8g2/cscr/u8g2_input_value.c \
../Drivers/u8g2/cscr/u8g2_intersection.c \
../Drivers/u8g2/cscr/u8g2_kerning.c \
../Drivers/u8g2/cscr/u8g2_line.c \
../Drivers/u8g2/cscr/u8g2_ll_hvline.c \
../Drivers/u8g2/cscr/u8g2_message.c \
../Drivers/u8g2/cscr/u8g2_polygon.c \
../Drivers/u8g2/cscr/u8g2_selection_list.c \
../Drivers/u8g2/cscr/u8g2_setup.c \
../Drivers/u8g2/cscr/u8x8_8x8.c \
../Drivers/u8g2/cscr/u8x8_byte.c \
../Drivers/u8g2/cscr/u8x8_cad.c \
../Drivers/u8g2/cscr/u8x8_d_a2printer.c \
../Drivers/u8g2/cscr/u8x8_d_il3820_296x128.c \
../Drivers/u8g2/cscr/u8x8_d_ist3020.c \
../Drivers/u8g2/cscr/u8x8_d_ks0108.c \
../Drivers/u8g2/cscr/u8x8_d_lc7981.c \
../Drivers/u8g2/cscr/u8x8_d_ld7032_60x32.c \
../Drivers/u8g2/cscr/u8x8_d_ls013b7dh03.c \
../Drivers/u8g2/cscr/u8x8_d_max7219.c \
../Drivers/u8g2/cscr/u8x8_d_pcd8544_84x48.c \
../Drivers/u8g2/cscr/u8x8_d_pcf8812.c \
../Drivers/u8g2/cscr/u8x8_d_sbn1661.c \
../Drivers/u8g2/cscr/u8x8_d_sed1330.c \
../Drivers/u8g2/cscr/u8x8_d_sh1107.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1305.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1306_128x32.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1306_128x64_noname.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1306_64x32.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1306_64x48.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1306_96x16.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1309.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1322.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1325.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1326.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1327.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1329.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1606_172x72.c \
../Drivers/u8g2/cscr/u8x8_d_ssd1607_200x200.c \
../Drivers/u8g2/cscr/u8x8_d_st75256.c \
../Drivers/u8g2/cscr/u8x8_d_st7565.c \
../Drivers/u8g2/cscr/u8x8_d_st7567.c \
../Drivers/u8g2/cscr/u8x8_d_st7588.c \
../Drivers/u8g2/cscr/u8x8_d_st7920.c \
../Drivers/u8g2/cscr/u8x8_d_stdio.c \
../Drivers/u8g2/cscr/u8x8_d_t6963.c \
../Drivers/u8g2/cscr/u8x8_d_uc1601.c \
../Drivers/u8g2/cscr/u8x8_d_uc1604.c \
../Drivers/u8g2/cscr/u8x8_d_uc1608.c \
../Drivers/u8g2/cscr/u8x8_d_uc1610.c \
../Drivers/u8g2/cscr/u8x8_d_uc1611.c \
../Drivers/u8g2/cscr/u8x8_d_uc1617.c \
../Drivers/u8g2/cscr/u8x8_d_uc1638.c \
../Drivers/u8g2/cscr/u8x8_d_uc1701_dogs102.c \
../Drivers/u8g2/cscr/u8x8_d_uc1701_mini12864.c \
../Drivers/u8g2/cscr/u8x8_debounce.c \
../Drivers/u8g2/cscr/u8x8_display.c \
../Drivers/u8g2/cscr/u8x8_fonts.c \
../Drivers/u8g2/cscr/u8x8_gpio.c \
../Drivers/u8g2/cscr/u8x8_input_value.c \
../Drivers/u8g2/cscr/u8x8_message.c \
../Drivers/u8g2/cscr/u8x8_selection_list.c \
../Drivers/u8g2/cscr/u8x8_setup.c \
../Drivers/u8g2/cscr/u8x8_string.c \
../Drivers/u8g2/cscr/u8x8_u16toa.c \
../Drivers/u8g2/cscr/u8x8_u8toa.c 

OBJS += \
./Drivers/u8g2/cscr/u8g2_bitmap.o \
./Drivers/u8g2/cscr/u8g2_box.o \
./Drivers/u8g2/cscr/u8g2_buffer.o \
./Drivers/u8g2/cscr/u8g2_circle.o \
./Drivers/u8g2/cscr/u8g2_cleardisplay.o \
./Drivers/u8g2/cscr/u8g2_d_memory.o \
./Drivers/u8g2/cscr/u8g2_d_setup.o \
./Drivers/u8g2/cscr/u8g2_font.o \
./Drivers/u8g2/cscr/u8g2_fonts.o \
./Drivers/u8g2/cscr/u8g2_hvline.o \
./Drivers/u8g2/cscr/u8g2_input_value.o \
./Drivers/u8g2/cscr/u8g2_intersection.o \
./Drivers/u8g2/cscr/u8g2_kerning.o \
./Drivers/u8g2/cscr/u8g2_line.o \
./Drivers/u8g2/cscr/u8g2_ll_hvline.o \
./Drivers/u8g2/cscr/u8g2_message.o \
./Drivers/u8g2/cscr/u8g2_polygon.o \
./Drivers/u8g2/cscr/u8g2_selection_list.o \
./Drivers/u8g2/cscr/u8g2_setup.o \
./Drivers/u8g2/cscr/u8x8_8x8.o \
./Drivers/u8g2/cscr/u8x8_byte.o \
./Drivers/u8g2/cscr/u8x8_cad.o \
./Drivers/u8g2/cscr/u8x8_d_a2printer.o \
./Drivers/u8g2/cscr/u8x8_d_il3820_296x128.o \
./Drivers/u8g2/cscr/u8x8_d_ist3020.o \
./Drivers/u8g2/cscr/u8x8_d_ks0108.o \
./Drivers/u8g2/cscr/u8x8_d_lc7981.o \
./Drivers/u8g2/cscr/u8x8_d_ld7032_60x32.o \
./Drivers/u8g2/cscr/u8x8_d_ls013b7dh03.o \
./Drivers/u8g2/cscr/u8x8_d_max7219.o \
./Drivers/u8g2/cscr/u8x8_d_pcd8544_84x48.o \
./Drivers/u8g2/cscr/u8x8_d_pcf8812.o \
./Drivers/u8g2/cscr/u8x8_d_sbn1661.o \
./Drivers/u8g2/cscr/u8x8_d_sed1330.o \
./Drivers/u8g2/cscr/u8x8_d_sh1107.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1305.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x32.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x64_noname.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x32.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x48.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_96x16.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1309.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1322.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1325.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1326.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1327.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1329.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1606_172x72.o \
./Drivers/u8g2/cscr/u8x8_d_ssd1607_200x200.o \
./Drivers/u8g2/cscr/u8x8_d_st75256.o \
./Drivers/u8g2/cscr/u8x8_d_st7565.o \
./Drivers/u8g2/cscr/u8x8_d_st7567.o \
./Drivers/u8g2/cscr/u8x8_d_st7588.o \
./Drivers/u8g2/cscr/u8x8_d_st7920.o \
./Drivers/u8g2/cscr/u8x8_d_stdio.o \
./Drivers/u8g2/cscr/u8x8_d_t6963.o \
./Drivers/u8g2/cscr/u8x8_d_uc1601.o \
./Drivers/u8g2/cscr/u8x8_d_uc1604.o \
./Drivers/u8g2/cscr/u8x8_d_uc1608.o \
./Drivers/u8g2/cscr/u8x8_d_uc1610.o \
./Drivers/u8g2/cscr/u8x8_d_uc1611.o \
./Drivers/u8g2/cscr/u8x8_d_uc1617.o \
./Drivers/u8g2/cscr/u8x8_d_uc1638.o \
./Drivers/u8g2/cscr/u8x8_d_uc1701_dogs102.o \
./Drivers/u8g2/cscr/u8x8_d_uc1701_mini12864.o \
./Drivers/u8g2/cscr/u8x8_debounce.o \
./Drivers/u8g2/cscr/u8x8_display.o \
./Drivers/u8g2/cscr/u8x8_fonts.o \
./Drivers/u8g2/cscr/u8x8_gpio.o \
./Drivers/u8g2/cscr/u8x8_input_value.o \
./Drivers/u8g2/cscr/u8x8_message.o \
./Drivers/u8g2/cscr/u8x8_selection_list.o \
./Drivers/u8g2/cscr/u8x8_setup.o \
./Drivers/u8g2/cscr/u8x8_string.o \
./Drivers/u8g2/cscr/u8x8_u16toa.o \
./Drivers/u8g2/cscr/u8x8_u8toa.o 

C_DEPS += \
./Drivers/u8g2/cscr/u8g2_bitmap.d \
./Drivers/u8g2/cscr/u8g2_box.d \
./Drivers/u8g2/cscr/u8g2_buffer.d \
./Drivers/u8g2/cscr/u8g2_circle.d \
./Drivers/u8g2/cscr/u8g2_cleardisplay.d \
./Drivers/u8g2/cscr/u8g2_d_memory.d \
./Drivers/u8g2/cscr/u8g2_d_setup.d \
./Drivers/u8g2/cscr/u8g2_font.d \
./Drivers/u8g2/cscr/u8g2_fonts.d \
./Drivers/u8g2/cscr/u8g2_hvline.d \
./Drivers/u8g2/cscr/u8g2_input_value.d \
./Drivers/u8g2/cscr/u8g2_intersection.d \
./Drivers/u8g2/cscr/u8g2_kerning.d \
./Drivers/u8g2/cscr/u8g2_line.d \
./Drivers/u8g2/cscr/u8g2_ll_hvline.d \
./Drivers/u8g2/cscr/u8g2_message.d \
./Drivers/u8g2/cscr/u8g2_polygon.d \
./Drivers/u8g2/cscr/u8g2_selection_list.d \
./Drivers/u8g2/cscr/u8g2_setup.d \
./Drivers/u8g2/cscr/u8x8_8x8.d \
./Drivers/u8g2/cscr/u8x8_byte.d \
./Drivers/u8g2/cscr/u8x8_cad.d \
./Drivers/u8g2/cscr/u8x8_d_a2printer.d \
./Drivers/u8g2/cscr/u8x8_d_il3820_296x128.d \
./Drivers/u8g2/cscr/u8x8_d_ist3020.d \
./Drivers/u8g2/cscr/u8x8_d_ks0108.d \
./Drivers/u8g2/cscr/u8x8_d_lc7981.d \
./Drivers/u8g2/cscr/u8x8_d_ld7032_60x32.d \
./Drivers/u8g2/cscr/u8x8_d_ls013b7dh03.d \
./Drivers/u8g2/cscr/u8x8_d_max7219.d \
./Drivers/u8g2/cscr/u8x8_d_pcd8544_84x48.d \
./Drivers/u8g2/cscr/u8x8_d_pcf8812.d \
./Drivers/u8g2/cscr/u8x8_d_sbn1661.d \
./Drivers/u8g2/cscr/u8x8_d_sed1330.d \
./Drivers/u8g2/cscr/u8x8_d_sh1107.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1305.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x32.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x64_noname.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x32.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x48.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1306_96x16.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1309.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1322.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1325.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1326.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1327.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1329.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1606_172x72.d \
./Drivers/u8g2/cscr/u8x8_d_ssd1607_200x200.d \
./Drivers/u8g2/cscr/u8x8_d_st75256.d \
./Drivers/u8g2/cscr/u8x8_d_st7565.d \
./Drivers/u8g2/cscr/u8x8_d_st7567.d \
./Drivers/u8g2/cscr/u8x8_d_st7588.d \
./Drivers/u8g2/cscr/u8x8_d_st7920.d \
./Drivers/u8g2/cscr/u8x8_d_stdio.d \
./Drivers/u8g2/cscr/u8x8_d_t6963.d \
./Drivers/u8g2/cscr/u8x8_d_uc1601.d \
./Drivers/u8g2/cscr/u8x8_d_uc1604.d \
./Drivers/u8g2/cscr/u8x8_d_uc1608.d \
./Drivers/u8g2/cscr/u8x8_d_uc1610.d \
./Drivers/u8g2/cscr/u8x8_d_uc1611.d \
./Drivers/u8g2/cscr/u8x8_d_uc1617.d \
./Drivers/u8g2/cscr/u8x8_d_uc1638.d \
./Drivers/u8g2/cscr/u8x8_d_uc1701_dogs102.d \
./Drivers/u8g2/cscr/u8x8_d_uc1701_mini12864.d \
./Drivers/u8g2/cscr/u8x8_debounce.d \
./Drivers/u8g2/cscr/u8x8_display.d \
./Drivers/u8g2/cscr/u8x8_fonts.d \
./Drivers/u8g2/cscr/u8x8_gpio.d \
./Drivers/u8g2/cscr/u8x8_input_value.d \
./Drivers/u8g2/cscr/u8x8_message.d \
./Drivers/u8g2/cscr/u8x8_selection_list.d \
./Drivers/u8g2/cscr/u8x8_setup.d \
./Drivers/u8g2/cscr/u8x8_string.d \
./Drivers/u8g2/cscr/u8x8_u16toa.d \
./Drivers/u8g2/cscr/u8x8_u8toa.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/u8g2/cscr/%.o: ../Drivers/u8g2/cscr/%.c Drivers/u8g2/cscr/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WLE5xx -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../Drivers/u8g2/cscr -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-u8g2-2f-cscr

clean-Drivers-2f-u8g2-2f-cscr:
	-$(RM) ./Drivers/u8g2/cscr/u8g2_bitmap.d ./Drivers/u8g2/cscr/u8g2_bitmap.o ./Drivers/u8g2/cscr/u8g2_box.d ./Drivers/u8g2/cscr/u8g2_box.o ./Drivers/u8g2/cscr/u8g2_buffer.d ./Drivers/u8g2/cscr/u8g2_buffer.o ./Drivers/u8g2/cscr/u8g2_circle.d ./Drivers/u8g2/cscr/u8g2_circle.o ./Drivers/u8g2/cscr/u8g2_cleardisplay.d ./Drivers/u8g2/cscr/u8g2_cleardisplay.o ./Drivers/u8g2/cscr/u8g2_d_memory.d ./Drivers/u8g2/cscr/u8g2_d_memory.o ./Drivers/u8g2/cscr/u8g2_d_setup.d ./Drivers/u8g2/cscr/u8g2_d_setup.o ./Drivers/u8g2/cscr/u8g2_font.d ./Drivers/u8g2/cscr/u8g2_font.o ./Drivers/u8g2/cscr/u8g2_fonts.d ./Drivers/u8g2/cscr/u8g2_fonts.o ./Drivers/u8g2/cscr/u8g2_hvline.d ./Drivers/u8g2/cscr/u8g2_hvline.o ./Drivers/u8g2/cscr/u8g2_input_value.d ./Drivers/u8g2/cscr/u8g2_input_value.o ./Drivers/u8g2/cscr/u8g2_intersection.d ./Drivers/u8g2/cscr/u8g2_intersection.o ./Drivers/u8g2/cscr/u8g2_kerning.d ./Drivers/u8g2/cscr/u8g2_kerning.o ./Drivers/u8g2/cscr/u8g2_line.d ./Drivers/u8g2/cscr/u8g2_line.o ./Drivers/u8g2/cscr/u8g2_ll_hvline.d ./Drivers/u8g2/cscr/u8g2_ll_hvline.o ./Drivers/u8g2/cscr/u8g2_message.d ./Drivers/u8g2/cscr/u8g2_message.o ./Drivers/u8g2/cscr/u8g2_polygon.d ./Drivers/u8g2/cscr/u8g2_polygon.o ./Drivers/u8g2/cscr/u8g2_selection_list.d ./Drivers/u8g2/cscr/u8g2_selection_list.o ./Drivers/u8g2/cscr/u8g2_setup.d ./Drivers/u8g2/cscr/u8g2_setup.o ./Drivers/u8g2/cscr/u8x8_8x8.d ./Drivers/u8g2/cscr/u8x8_8x8.o ./Drivers/u8g2/cscr/u8x8_byte.d ./Drivers/u8g2/cscr/u8x8_byte.o ./Drivers/u8g2/cscr/u8x8_cad.d ./Drivers/u8g2/cscr/u8x8_cad.o ./Drivers/u8g2/cscr/u8x8_d_a2printer.d ./Drivers/u8g2/cscr/u8x8_d_a2printer.o ./Drivers/u8g2/cscr/u8x8_d_il3820_296x128.d ./Drivers/u8g2/cscr/u8x8_d_il3820_296x128.o ./Drivers/u8g2/cscr/u8x8_d_ist3020.d ./Drivers/u8g2/cscr/u8x8_d_ist3020.o ./Drivers/u8g2/cscr/u8x8_d_ks0108.d ./Drivers/u8g2/cscr/u8x8_d_ks0108.o ./Drivers/u8g2/cscr/u8x8_d_lc7981.d ./Drivers/u8g2/cscr/u8x8_d_lc7981.o ./Drivers/u8g2/cscr/u8x8_d_ld7032_60x32.d ./Drivers/u8g2/cscr/u8x8_d_ld7032_60x32.o ./Drivers/u8g2/cscr/u8x8_d_ls013b7dh03.d ./Drivers/u8g2/cscr/u8x8_d_ls013b7dh03.o ./Drivers/u8g2/cscr/u8x8_d_max7219.d ./Drivers/u8g2/cscr/u8x8_d_max7219.o ./Drivers/u8g2/cscr/u8x8_d_pcd8544_84x48.d ./Drivers/u8g2/cscr/u8x8_d_pcd8544_84x48.o ./Drivers/u8g2/cscr/u8x8_d_pcf8812.d ./Drivers/u8g2/cscr/u8x8_d_pcf8812.o ./Drivers/u8g2/cscr/u8x8_d_sbn1661.d ./Drivers/u8g2/cscr/u8x8_d_sbn1661.o ./Drivers/u8g2/cscr/u8x8_d_sed1330.d ./Drivers/u8g2/cscr/u8x8_d_sed1330.o ./Drivers/u8g2/cscr/u8x8_d_sh1107.d ./Drivers/u8g2/cscr/u8x8_d_sh1107.o ./Drivers/u8g2/cscr/u8x8_d_ssd1305.d ./Drivers/u8g2/cscr/u8x8_d_ssd1305.o ./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x32.d ./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x32.o ./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x64_noname.d ./Drivers/u8g2/cscr/u8x8_d_ssd1306_128x64_noname.o ./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x32.d ./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x32.o ./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x48.d ./Drivers/u8g2/cscr/u8x8_d_ssd1306_64x48.o ./Drivers/u8g2/cscr/u8x8_d_ssd1306_96x16.d ./Drivers/u8g2/cscr/u8x8_d_ssd1306_96x16.o ./Drivers/u8g2/cscr/u8x8_d_ssd1309.d ./Drivers/u8g2/cscr/u8x8_d_ssd1309.o ./Drivers/u8g2/cscr/u8x8_d_ssd1322.d ./Drivers/u8g2/cscr/u8x8_d_ssd1322.o ./Drivers/u8g2/cscr/u8x8_d_ssd1325.d ./Drivers/u8g2/cscr/u8x8_d_ssd1325.o ./Drivers/u8g2/cscr/u8x8_d_ssd1326.d ./Drivers/u8g2/cscr/u8x8_d_ssd1326.o ./Drivers/u8g2/cscr/u8x8_d_ssd1327.d ./Drivers/u8g2/cscr/u8x8_d_ssd1327.o ./Drivers/u8g2/cscr/u8x8_d_ssd1329.d ./Drivers/u8g2/cscr/u8x8_d_ssd1329.o ./Drivers/u8g2/cscr/u8x8_d_ssd1606_172x72.d ./Drivers/u8g2/cscr/u8x8_d_ssd1606_172x72.o ./Drivers/u8g2/cscr/u8x8_d_ssd1607_200x200.d ./Drivers/u8g2/cscr/u8x8_d_ssd1607_200x200.o ./Drivers/u8g2/cscr/u8x8_d_st75256.d ./Drivers/u8g2/cscr/u8x8_d_st75256.o ./Drivers/u8g2/cscr/u8x8_d_st7565.d ./Drivers/u8g2/cscr/u8x8_d_st7565.o ./Drivers/u8g2/cscr/u8x8_d_st7567.d ./Drivers/u8g2/cscr/u8x8_d_st7567.o ./Drivers/u8g2/cscr/u8x8_d_st7588.d ./Drivers/u8g2/cscr/u8x8_d_st7588.o ./Drivers/u8g2/cscr/u8x8_d_st7920.d ./Drivers/u8g2/cscr/u8x8_d_st7920.o ./Drivers/u8g2/cscr/u8x8_d_stdio.d ./Drivers/u8g2/cscr/u8x8_d_stdio.o ./Drivers/u8g2/cscr/u8x8_d_t6963.d ./Drivers/u8g2/cscr/u8x8_d_t6963.o ./Drivers/u8g2/cscr/u8x8_d_uc1601.d ./Drivers/u8g2/cscr/u8x8_d_uc1601.o ./Drivers/u8g2/cscr/u8x8_d_uc1604.d ./Drivers/u8g2/cscr/u8x8_d_uc1604.o ./Drivers/u8g2/cscr/u8x8_d_uc1608.d ./Drivers/u8g2/cscr/u8x8_d_uc1608.o ./Drivers/u8g2/cscr/u8x8_d_uc1610.d ./Drivers/u8g2/cscr/u8x8_d_uc1610.o ./Drivers/u8g2/cscr/u8x8_d_uc1611.d ./Drivers/u8g2/cscr/u8x8_d_uc1611.o ./Drivers/u8g2/cscr/u8x8_d_uc1617.d ./Drivers/u8g2/cscr/u8x8_d_uc1617.o ./Drivers/u8g2/cscr/u8x8_d_uc1638.d ./Drivers/u8g2/cscr/u8x8_d_uc1638.o ./Drivers/u8g2/cscr/u8x8_d_uc1701_dogs102.d ./Drivers/u8g2/cscr/u8x8_d_uc1701_dogs102.o ./Drivers/u8g2/cscr/u8x8_d_uc1701_mini12864.d ./Drivers/u8g2/cscr/u8x8_d_uc1701_mini12864.o ./Drivers/u8g2/cscr/u8x8_debounce.d ./Drivers/u8g2/cscr/u8x8_debounce.o ./Drivers/u8g2/cscr/u8x8_display.d ./Drivers/u8g2/cscr/u8x8_display.o ./Drivers/u8g2/cscr/u8x8_fonts.d ./Drivers/u8g2/cscr/u8x8_fonts.o ./Drivers/u8g2/cscr/u8x8_gpio.d ./Drivers/u8g2/cscr/u8x8_gpio.o ./Drivers/u8g2/cscr/u8x8_input_value.d ./Drivers/u8g2/cscr/u8x8_input_value.o ./Drivers/u8g2/cscr/u8x8_message.d ./Drivers/u8g2/cscr/u8x8_message.o ./Drivers/u8g2/cscr/u8x8_selection_list.d ./Drivers/u8g2/cscr/u8x8_selection_list.o ./Drivers/u8g2/cscr/u8x8_setup.d ./Drivers/u8g2/cscr/u8x8_setup.o ./Drivers/u8g2/cscr/u8x8_string.d ./Drivers/u8g2/cscr/u8x8_string.o ./Drivers/u8g2/cscr/u8x8_u16toa.d ./Drivers/u8g2/cscr/u8x8_u16toa.o ./Drivers/u8g2/cscr/u8x8_u8toa.d ./Drivers/u8g2/cscr/u8x8_u8toa.o

.PHONY: clean-Drivers-2f-u8g2-2f-cscr

