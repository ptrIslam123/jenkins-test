#pragma once
#include <iostream>

struct Foo {
    Foo() {
        std::cout << "Foo()\n";
    }

    Foo(int , int ) {
        std::cout << "Foo(int , int )\n";
    }
    
    void method() {
        std::cout << "Call Foo::method()\t" << this << "\n";
    }

    ~Foo() {
        std::cout << "~Foo()\n";
    }
};