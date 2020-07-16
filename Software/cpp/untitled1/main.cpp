#include <iostream>
#include <string>
#include <vector>
#include <map>

using namespace std;

int main() {

    string name = "        Hallo Martin, dies ist eine Laufschrift!        ";

    for (int j = 0; j < name.size()-8; j++) {
        for (int i = 0; i < 8; i++) {
            cout << name[i+j];
        }
        cout << endl;
    }
    return 0;
}