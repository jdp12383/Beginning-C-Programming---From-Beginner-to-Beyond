#include <iostream>

class Foo 
{
private:
    mutable int data;
public:
    int getData() const
    {
        data = 10;  // error - const func can't change member
                    // to fix - c++11 declare member as mutable
        return data;
    }
};

int main(int argc, char **argv)
{
	Foo foo;
    std::cout << foo.getData() << std::endl;
	return 0;
}
