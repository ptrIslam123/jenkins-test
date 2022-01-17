#include <iostream>

#include "wrapper.h"
#include "static_allocator.h"
#include "dynamic_allocator.h"

#include "foo.h"

typedef Wrapper<Foo, DynamicAllocator<Foo> > DynamicFoo;
typedef Wrapper<Foo, StaticAllocator<Foo> > StaticFoo;


struct A {
    A() {
        std::cout << "A()\n";
    }

    virtual ~A() {
        std::cout << "~A()\n";
    }
};


struct B : A {
    B() {
        std::cout << "B()\n";
    }

    ~B() {
        std::cout << "~B()\n";
    }
};

int main() {
    B* b = new B();
    A* a = b;

    delete a;



    return 0;
}
