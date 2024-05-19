#include <iostream>
#include <vector>

void interpretBrainfuck(const std::string& code) {
    std::vector<unsigned char> memory(30000, 0);
    size_t pointer = 0;
    size_t instructionPointer = 0;

    while (instructionPointer < code.size()) {
        char instruction = code[instructionPointer];
        switch (instruction) {
            case '>':
                ++pointer;
                break;
            case '<':
                --pointer;
                break;
            case '+':
                ++memory[pointer];
                break;
            case '-':
                --memory[pointer];
                break;
            case '[':
                if (memory[pointer] == 0) {
                    size_t loopDepth = 1;
                    while (loopDepth != 0) {
                        ++instructionPointer;
                        if (code[instructionPointer] == '[') ++loopDepth;
                        else if (code[instructionPointer] == ']') --loopDepth;
                    }
                }
                break;
            case ']':
                if (memory[pointer] != 0) {
                    size_t loopDepth = 1;
                    while (loopDepth != 0) {
                        --instructionPointer;
                        if (code[instructionPointer] == '[') --loopDepth;
                        else if (code[instructionPointer] == ']') ++loopDepth;
                    }
                }
                break;
            case '.':
                std::cout << memory[pointer];
                break;
            case ',':
                char input;
                std::cin >> input;
                memory[pointer] = input;
                break;
        }
        ++instructionPointer;
    }
}

int main() {
    std::string code = "Your Brainfuck code here";
    interpretBrainfuck(code);
    return 0;
}
