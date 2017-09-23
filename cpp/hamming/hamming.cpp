#include "hamming.h"

int hamming::compute(std::string dna_strand, std::string strand_to_compare) {
	if (dna_strand.length() != strand_to_compare.length()) {
		throw std::domain_error("Strands must be of equal length");
	}
	int hamming_distance = 0;
	for (int i = 0; i < dna_strand.length(); i++) {
		if (dna_strand[i] != strand_to_compare[i]) {
			hamming_distance++;
		}
	}
	return hamming_distance;
}