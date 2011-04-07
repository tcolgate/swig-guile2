/* -----------------------------------------------------------------------------
 * std_common.i
 *
 * SWIG typemaps for STL - common utilities
 * ----------------------------------------------------------------------------- */

%include <std/std_except.i>

%apply size_t { std::size_t };

#define SWIG_string2scm(s) scm_from_locale_string(s.c_str())

%{
#include <string>

inline std::string SWIG_scm2string(SCM x) {
    char* temp;
    temp = SWIG_scm2str(x);
    std::string s(temp);
    if (temp) SWIG_free(temp);
    return s;
}
%}
