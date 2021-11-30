#include <iostream>
#include "StrongScopedEnum.h"

// https://coders-corner.net/2017/08/13/scoped-vs-unscoped-enum/
 
using namespace StrongScopedEnum;


int main(int argc, char **argv)
{    
    // Strong enum
    Colors color = Colors::Blue;
    OtherColors otherColors = OtherColors::Blue;
     
    int enumValue = static_cast<int>(Colors::Red);  // Colors::Red -> error
    std::cout << enumValue << std::endl;
    
	return 0;
}
