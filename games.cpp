#include <iostream>
using namespace std;

int main() {
    // Game loop
    while (true) {
        // Display game menu
        cout << "1. Start Game" << endl;
        cout << "2. Exit" << endl;
        cout << "Enter your choice: ";
        
        // Get user input
        int choice;
        cin >> choice;

        // Process user input
        switch(choice) {
            case 1:
                // Start game function
                // Implement your game logic here
                cout << "Game Started!" << endl;
                break;
            case 2:
                // Exit game
                cout << "Exiting game..." << endl;
                return 0;
            default:
                cout << "Invalid choice! Please try again." << endl;
        }
    }
    return 0;
}
