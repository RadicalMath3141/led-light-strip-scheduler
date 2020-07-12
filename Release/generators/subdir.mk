################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../generators/random_generator.cpp \
../generators/sequential_generator.cpp 

LINK_OBJ += \
./generators/random_generator.cpp.o \
./generators/sequential_generator.cpp.o 

CPP_DEPS += \
./generators/random_generator.cpp.d \
./generators/sequential_generator.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
generators/random_generator.cpp.o: ../generators/random_generator.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Eclipse.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/avr-gcc/7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler/ledstates" -I"/Applications/Eclipse.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.8.2/cores/arduino" -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler/generators" -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler" -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler/android_messages" -I"/Applications/Eclipse.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.8.2/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

generators/sequential_generator.cpp.o: ../generators/sequential_generator.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Eclipse.app/Contents/Eclipse//arduinoPlugin/packages/arduino/tools/avr-gcc/7.3.0-atmel3.6.1-arduino5/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler/ledstates" -I"/Applications/Eclipse.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.8.2/cores/arduino" -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler/generators" -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler" -I"/Users/karthikdharmarajan/eclipse-workspace/led_strip_scheduler/android_messages" -I"/Applications/Eclipse.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.8.2/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


