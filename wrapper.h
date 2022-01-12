#pragma once

template<class T, class Allocator>
class Wrapper {
public:
    using ValueType = T;
    using AllocatorType = Allocator;

    template<class ... Args>
    Wrapper(const Args& ... args):
        data_(nullptr) {
    }

    ValueType* operator-> () {
        static AllocatorType allocator;
        static bool isCreated = false;
        
        if (!isCreated) {
            data_ = static_cast<ValueType*>(allocator.allocate());
            allocator.construct(
                /* 
                    какую-то сущность которая в себе будет 
                    хранить типы и значения передаваемые во время вызова конструктора обертки
                */
            );
        }
    }



private:
    ValueType* data_;
};
