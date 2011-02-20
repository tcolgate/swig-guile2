/* -----------------------------------------------------------------------------
 * cplusplus.i
 *
 * SWIG typemaps for C++
 * ----------------------------------------------------------------------------- */

%typemap(guile,out) string, std::string {
  $result = scm_from_locale_string(const_cast<char*>($1.c_str()));
}
%typemap(guile,in) string, std::string {
  $1 = scm_to_locale_string($input);
}

%typemap(guile,out) complex, complex<double>, std::complex<double> {
  $result = scm_make_rectangular( scm_from_double ($1.real ()),
           scm_from_double ($1.imag ()) );
}
%typemap(guile,in) complex, complex<double>, std::complex<double> {
  $1 = std::complex<double>( scm_to_double (scm_real_part ($input)),
           scm_to_double (scm_imag_part ($input)) );
}

