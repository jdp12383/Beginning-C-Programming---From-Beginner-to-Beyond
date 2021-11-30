#ifndef PRODUCER_HPP
#define PRODUCER_HPP

#include <string>
#include "Thread.hpp"
#include "Pool.hpp"

using namespace std;

class Producer : public Thread
{
private:
    Pool<string> * pool;
    string id;
    size_t num_items;
protected:
    virtual void run();
public:
    Producer(Pool<string> * pool, string id);
    ~Producer();
    void produce(size_t);

};

#endif // PRODUCER_HPP
