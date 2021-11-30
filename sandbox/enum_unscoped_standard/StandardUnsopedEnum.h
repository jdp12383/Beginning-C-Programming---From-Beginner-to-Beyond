namespace StandardUnsopedEnum
{
    enum Colors
    {
        Red,
        Green,
        Blue
    };
    
    enum OtherColors
    {
        Yello,
        Blue    // redefinition error
    };
}