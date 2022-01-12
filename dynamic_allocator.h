#pragma once

#include <new>
#include <cstdlib>

template<class T>
class DynamicAllocator {
public:
    typedef T ValueType;

    DynamicAllocator();
    ~DynamicAllocator() = default;

    void* allocate();
    
    template<class ... Args>
    void construct(const Args& ... args);

private:
    void* data_;
};

template<class T>
DynamicAllocator<T>::DynamicAllocator():
    data_(nullptr) {
}

template<class T>
void* DynamicAllocator<T>::allocate() {
    return malloc(sizeof(ValueType));
}


template<class T>
template<class ... Args>
void DynamicAllocator<T>::construct(const Args& ... args) {
    new(data_) ValueType(args ...);
}
