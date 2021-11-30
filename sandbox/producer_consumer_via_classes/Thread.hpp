#ifndef THREAD_HPP
#define THREAD_HPP

#include <pthread.h>

class Thread
{
private:
    pthread_t thread;
    static void * dispatch(void *);
protected:
    virtual void run() = 0;
public:
    virtual ~Thread();
    void start();
    void join();

};

#endif // THREAD_HPP
