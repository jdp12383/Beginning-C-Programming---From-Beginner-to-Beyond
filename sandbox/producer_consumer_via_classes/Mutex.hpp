#ifndef MUTEX_HPP
#define MUTEX_HPP

#include <pthread.h>

/*
 * Mutex class: wrapper around C API
 */
class Mutex
{
private:
    pthread_mutex_t mutex;
    
public:
    Mutex();
    ~Mutex();
    void lock();
    void unlock();
    bool trylock();
};

#endif // MUTEX_HPP
