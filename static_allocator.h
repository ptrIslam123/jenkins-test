#pragma once

#include <new>

template<class T>
class StaticAllocator {
public:
    typedef T ValueType;

    StaticAllocator();
    ~StaticAllocator() = default;

    void* allocate();
    
    template<class ... Args>
    void construct(const Args& ... args);

private:
    char* data_;
};


template<class T>
StaticAllocator<T>::StaticAllocator():
    data_(nullptr) {
}

template<class T>
void* StaticAllocator<T>::allocate() {
    static char buffer[sizeof(ValueType)] = {0};
    data_ = buffer;
    return data_;
}

template<class T>
template<class ... Args>
void StaticAllocator<T>::construct(const Args& ... args) {
    new(data_) ValueType(args ...);
}