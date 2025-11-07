if [ ! -d "bin" ]; then
    mkdir bin
else
	rm bin/*
fi
echo "Compiling with C++17 standard..."

g++ -std=c++17 -g -O0 -I . -o bin/interrupts interrupts.cpp

if [ $? -eq 0 ]; then
    echo "Build successful. Executable: bin/interrupts"
else
    echo "Build failed."
    exit 1
fi