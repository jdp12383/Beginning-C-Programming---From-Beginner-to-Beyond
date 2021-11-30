#include <unistd.h>
#include "Producer.hpp"

Producer::Producer(Pool<string> * pool, string id)
: pool(pool), id(id), num_items(0)
{
}

Producer::~Producer()
{
}

void Producer::run()
{
    if(!pool)
        return;
    for(size_t i = 0; i < num_items;i++) {
        pool->push(id);
        usleep(100);
    }
}

void Producer::produce(size_t num_items)
{
    if(!pool)
        return;
    if(num_items <= 0)
        return;
    this->num_items = num_items;
    start();
}
