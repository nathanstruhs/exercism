#include "gigasecond.h"

using namespace boost::posix_time;

ptime gigasecond::advance(ptime const time) {
	time_duration gigasecond = seconds(1000000000);
	return time + gigasecond;
}