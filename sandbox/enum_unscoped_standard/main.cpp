#include <iostream>
#include "StandardUnsopedEnum.h"

// https://coders-corner.net/2017/08/13/scoped-vs-unscoped-enum/
 
using namespace StandardUnsopedEnum;

int main(int argc, char **argv)
{
    // Standard enum
	Colors color = Red;
    int enumValue = color::Red;
    
    enumValue = Red + Blue;

    std::cout << enumValue << std::endl;
    
	return 0;
}
