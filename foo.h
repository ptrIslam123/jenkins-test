#pragma once
#include <iostream>

int sum(int x, int y) {
    return x + y;
}

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