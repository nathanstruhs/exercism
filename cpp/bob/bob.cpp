#include "bob.h"

bool is_question(std::string remark) {
	return (remark.back() == '?');
}

bool is_yell(std::string remark) {
	bool flag = false;
	for (int i = 0; i < remark.length(); i++) {
		if (isalpha(remark[i])) {
			if (isupper(remark[i])) {
				flag = true;
			} else {
				return false;
			}
		}
	}
	return flag;
}

std::string remove_whitespace(std::string remark) {
	remark.erase(remove_if(remark.begin(), remark.end(), isspace), remark.end());
	return remark;
}

std::string bob::hey(std::string remark) {
	remark = remove_whitespace(remark);
	std::string response = "Whatever.";

	if (remark.empty()) {
		response = "Fine. Be that way!";
	} else if (is_yell(remark)) {
		response = "Whoa, chill out!";
	} else if (is_question(remark)) {
		response = "Sure.";
	}

	return response;
}
