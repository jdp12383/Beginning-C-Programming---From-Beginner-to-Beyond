#ifndef POOL_HPP
#define POOL_HPP

#include <queue>
#include <unistd.h>
#include "Mutex.hpp"

template <class T> class Pool
{
private:
    /* Data container queue. */
    std::queue<T> data_q;
    
    /* Mutex to protect the data_q. */
    Mutex mtx;
    
    /* Confgurable maximum size of the container. */
    size_t max_size;
    
    /* Time in usec that should be waited between two check of the mutex. */
    size_t spin_time;
    
public:
    Pool(size_t max_size = 10, size_t spin_time = 50)
    : max_size(max_size), spin_time(spin_time)
    {
    }
    
    ~Pool()
    {
        mtx.lock();
        while(data_q.size()) {
            data_q.pop();
        }
        mtx.unlock();
    }
    
    size_t size()
    {
        mtx.lock();
        size_t result = data_q.size();
        mtx.unlock();
        return result;
    }

    void push(T item)
    {
        mtx.lock();
        // TODO: replace with condition variable
        while (data_q.size() >= max_size) {
            mtx.unlock();
            usleep(spin_time);
            mtx.lock();
        }
        data_q.push(item);
        mtx.unlock();
    }

    T pop()
    {
        mtx.lock();
        // TODO: replace with condition variable
        while(data_q.size() <= 0) {
            mtx.unlock();
            usleep(spin_time);
            mtx.lock();
        }
        T item = data_q.front();
        data_q.pop();
        mtx.unlock();
        return item;
    }

};

#endif // POOL_HPP
