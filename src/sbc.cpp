#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <unordered_map>
#include <vector>
#include <algorithm>



struct sbc_line {
    int number_line;
    std::string command;
    std::string expression;
    std::string asm_line;

    sbc_line(int number_line, std::string command, std::string expression)
    {
        this->number_line = number_line;
        this->command = command;
        this->expression = expression;

        if (!command.compare("REM") || !command.compare("INPUT") || !command.compare("OUTPUT") || !command.compare("GOTO") || 
        !command.compare("IF") || !command.compare("LET") || !command.compare("END")) {
            std::cout << "Incorrect command at line " << number_line << '!' << std::endl;
            exit(1);
        }

        if (!command.compare("REM")) {
            std::for_each(expression.first(), expression.end(), [](char simbol) {
                if (std::isalpha(simbol) && std::islower(simbol)) {
                    std::cout << "Lower letter at line  " << number_line << '!' << std::endl;
                    exit(1);
                }
            })
        }
    }

    void make_asm_line(std::unordered_map<char, int> var)
    {
        if (command.compare("INPUT")) {

        }
        else if (command.compare("OUTPUT")) {

        }
        else if (command.compare("GOTO")) {

        }
        else if (command.compare("IF")) {

        }                
        else if (command.compare("LET")) {

        }        
        else if (command.compare("END")) {

        }        

    }


};

int main(int argc, char **argv)
{
    if (argc != 3) {
        std::cout << "Usage : sbc prog.bc bin.o\n";
        exit(1);
    }

    std::ifstream bc_file(argv[1], std::ios::in);

    if (!bc_file.is_open()) {
        std::cout << "Error : no such file or directory " << argv[1] << std::endl;
        exit(1);        
    }

    std::unordered_map<char, int> variables;

    std::string line, command, expression;
    int number_line = 0, cell_counter = 0;
    std::vector<sbc_line> lines;

    while (std::getline(bc_file, line)) {
        std::stringstream ss(line);
        ss >> number_line >> command;
        std::string part_expr;
        while (ss >> part_expr) expression += part_expr;

        sbc_line sbc_l(number_line, command, expression);
        lines.push_back(sbc_l);

    }

    for (auto line : lines) {

    }

    bc_file.close();    

    return 0;
}