/*
 * SMD5050LEDStrip.cpp
 *
 *  Created on: Jun 3, 2020
 *      Author: karthikdharmarajan
 */
#include "SMD5050LEDStrip.h"
#include <Arduino.h>

SMD5050LEDStrip::SMD5050LEDStrip(int redPinInput, int greenPinInput, int bluePinInput, SequentialGenerator **generators, int numGenerators)
	: redPin(redPinInput), greenPin(greenPinInput), bluePin(bluePinInput), generators(generators)
	, currentGeneratorIndex(0), endGeneratorIndex(numGenerators-1){
	pinMode(redPin, OUTPUT);
	pinMode(bluePin, OUTPUT);
	pinMode(greenPin, OUTPUT);
}

void SMD5050LEDStrip::changeColor (const Color& color){
	analogWrite(redPin, color.getRed());
	analogWrite(bluePin, color.getBlue());
	analogWrite(greenPin, color.getGreen());
}

SequentialGenerator *SMD5050LEDStrip::getSequentialGenerator(){
	return generators[currentGeneratorIndex];
}

void SMD5050LEDStrip::moveAlongSequentialGenerator(int amount){
	if(currentGeneratorIndex+amount > endGeneratorIndex){
		currentGeneratorIndex = (amount - (endGeneratorIndex - currentGeneratorIndex) - 1) % (endGeneratorIndex + 1);
	} else {
		currentGeneratorIndex+=amount;
	}
}

int SMD5050LEDStrip::getRedPin(){
	return redPin;
}

int SMD5050LEDStrip::getBluePin(){
	return bluePin;
}

int SMD5050LEDStrip::getGreenPin(){
	return greenPin;
}

String SMD5050LEDStrip::serialize(){
	String answer = "[";
	answer+= redPin;
	answer+= ",";
	answer+= greenPin;
	answer+= ",";
	answer+= bluePin;
	for(int i = 0; i <= endGeneratorIndex; i++){
		answer+=",";
	    answer+=generators[i]->serialize();
	}
	answer+="]";
	return answer;
}

SMD5050LEDStrip::~SMD5050LEDStrip(){
	for(int i = 0; i <= endGeneratorIndex; i++){
		if(generators[i] != nullptr){
			delete generators[i];
		}
	}
	delete[] generators;
}
