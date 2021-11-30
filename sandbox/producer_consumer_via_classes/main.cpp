#include <string>
#include "Pool.hpp"
#include "Producer.hpp"
#include "Consumer.hpp"

using namespace std;

int main(int argc, char **argv)
{
	Pool<string> pool;
    Producer producer0(&pool, "Producer 0");
    Consumer consumer0(&pool, "Consumer 0");
    Consumer consumer1(&pool, "Consumer 1");
    
    consumer0.consume(5);
    consumer1.consume(5);
    producer0.produce(10);
    
    producer0.join();
    consumer0.join();
    consumer1.join();
    
	return 0;
}
