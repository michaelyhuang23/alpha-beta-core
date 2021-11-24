/*
convert bipartite graph input to adjancy graph input
For example
FROM
% bip unweighted
% 13 6 5
1 1
1 2
1 3
2 1
2 3
3 4
3 3
4 1
4 3
5 5
5 2
6 1
6 2

TO
AdjacencyGraph
10
13
0
3
5
7
9
11
6
7
8
6
8
9
8
6
8
10
7
6
7
*/

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

using namespace std;

int main(){
    string file_name;
    cin >> file_name;
    ifstream infile("./"+file_name+"_konect",ios::in);
    ofstream outfile;
    ofstream metafile;
    metafile.open("./"+file_name+".meta");
    outfile.open("./"+file_name+".e");
    long long numEdge, numA, numB, first, second;
    string line;
    getline(infile,line);
    getline(infile,line);
    bool has_head = line.at(0) == '%';
    if(has_head){
        istringstream ss(line);
        string tmp;
        ss >> tmp>> numEdge >> numA >> numB;
    }else{
        istringstream ss(line);
        ss >> numA >> numB;
        while(getline(infile,line)){
            istringstream ss(line);
            ss >> first >> second;
            numA = max(numA, first);
            numB = max(numB, second);
        }
        infile.clear();
        infile.seekg(0, std::ios::beg);
        infile.ignore(256, '\n');
    }
    numEdge = 0;
    while(getline(infile,line)){
        istringstream ss(line);
        ss >> first >> second;
        first--;
        second--;
        second += numA;
        outfile << first <<" "<< second <<endl;
        outfile << second <<" "<< first <<endl;
        numEdge += 2;
    }
    infile.close();
    outfile.close();
    metafile << numA << endl;
    metafile << numB << endl;
    metafile << numEdge << endl;
    cout<<numA<<" "<<numB<<" "<<numEdge<<endl;
    return 1;
}