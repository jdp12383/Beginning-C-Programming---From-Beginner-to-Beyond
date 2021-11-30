#ifndef CONSUMER_HPP
#define CONSUMER_HPP

#include <string>
#include "Pool.hpp"
#include "Thread.hpp"

using namespace std;

class Consumer : public Thread
{
private:
    /* For more than one consumer. */
    static Mutex mtx;
    Pool<string> * pool;
    string id;
    size_t num_items;
protected:
    virtual void run();
public:
    Consumer(Pool<string> * pool, string id);
    ~Consumer();
    void consume(size_t);
};

#endif // CONSUMER_HPP
