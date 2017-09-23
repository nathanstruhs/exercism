#if !defined(HAMMING_H)
#define HAMMING_H
#include <string>

namespace hamming {
	int compute(std::string dna_strand, std::string strand_to_compare);
}

#endif