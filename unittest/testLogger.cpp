#include "Logger.hpp"

int main()
{
    string test("qing");
    DEBUG(1, 2.9, "wang", test);
    int x = 10;
    int y = 3.14;

    TRACE("x:",x, "y:",y);
    INFO("x:",x, "y:",y);
    DEBUG("x:",x, "y:",y);
    WARN("x:",x, "y:",y);
    ERROR("x:",x, "y:",y);
    FATAL("x:",x, "y:",y);
    
    return 0;
}