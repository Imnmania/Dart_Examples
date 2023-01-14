///* -------------------------------------
///* Specializing Generic Type Definitions
///* -------------------------------------

void main(List<String> args) {
  const JSON<String> json = {
    'name': 'John',
    'age': '30',
  };
}

typedef JSON<T> = Map<String, T>;
