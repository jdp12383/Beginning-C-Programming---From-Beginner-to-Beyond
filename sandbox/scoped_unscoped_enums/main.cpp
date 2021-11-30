#include <iostream>

// https://coders-corner.net/2017/08/13/scoped-vs-unscoped-enum/

namespace StandardUnsopedEnum
{
//    enum Colors
//    {
//        Red,
//        Green,
//        Blue
//    };
//    
//    enum OtherColors
//    {
//        Yello,
//        Blue    // error
//    };
}

namespace StrongScopedEnum
{
    enum class Colors : int
    {
        Red,
        Green,
        Blue
    };

    enum class OtherColors : int
    {
        Yellow,
        Blue,
    };
}
 
using namespace StrongScopedEnum;
using namespace StandardUnsopedEnum;

int main(int argc, char **argv)
{
    // Standard enum
//	Colors color = Red;
//    int enumValue = color::Red;
//    
//    enumValue = Red + Blue;
    
    // Strong enum
    Colors color = Colors::Blue;
    OtherColors otherColors = OtherColors::Blue;
     
    int enumValue = static_cast<int>(Colors::Red);  // error
    std::cout << enumValue << std::endl;
    
	return 0;
}
