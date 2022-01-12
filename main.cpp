#include <iostream>

#include "wrapper.h"
#include "static_allocator.h"
#include "dynamic_allocator.h"

#include "foo.h"

typedef Wrapper<Foo, DynamicAllocator<Foo> > DynamicFoo;
typedef Wrapper<Foo, StaticAllocator<Foo> > StaticFoo;

int main() {
    

   StaticFoo f1;
   StaticFoo f2;

   f1->method();
   f2->method();

    return 0;
}
