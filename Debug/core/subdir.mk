################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core/main.c 

OBJS += \
./core/main.o 

C_DEPS += \
./core/main.d 


# Each subdirectory must supply rules for building sources it contributes
core/%.o core/%.su core/%.cyclo: ../core/%.c core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-core

clean-core:
	-$(RM) ./core/main.cyclo ./core/main.d ./core/main.o ./core/main.su

.PHONY: clean-core

