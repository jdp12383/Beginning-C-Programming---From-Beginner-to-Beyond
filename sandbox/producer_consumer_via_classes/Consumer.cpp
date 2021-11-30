#include <iostream>
#include <string>
#include "Consumer.hpp"

using namespace std;

Consumer::Consumer(Pool<string> * pool, string id)
: pool(pool), id(id), num_items(0)
{
}

Consumer::~Consumer()
{
}

void Consumer::run()
{
    if(!pool)
        return;
    for(size_t i = 0; i < num_items;i++) {
        string item = pool->pop();
        mtx.lock();
        cout << "[" << id << "] : <" << item << ">" << endl;
        mtx.unlock();
    }
}

void Consumer::consume(size_t num_items)
{
    if(!pool)
        return;
    if(num_items <= 0)
        return;
    this->num_items = num_items;
    start();
}
