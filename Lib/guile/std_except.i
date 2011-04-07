// TODO: STL exception handling
// Note that the generic std_except.i file did not work
%{
#include <stdexcept>
%}
%include <exception.i>

namespace std {
  %ignore exception;
  struct exception {
  };
}

