/*
convert bipartite graph input from konect format to the format used by this codebase
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

meta file: 
n1
n2
m (number of undirected edges)

edge file:
v1 v2 (all edges are undirected and appear only once)
*/

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <unordered_set>

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
	unordered_set<long long> usedE;
    while(getline(infile,line)){
        istringstream ss(line);
        ss >> first >> second;
        first--;
        second--;
		if(usedE.find((long long)first*(numB+5)+second) != usedE.end()) continue;
		usedE.insert((long long)first*(numB+5)+second);
        outfile << first <<" "<< second <<endl;
        numEdge += 1;
    }
    infile.close();
    outfile.close();
    metafile << numA << endl;
    metafile << numB << endl;
    metafile << numEdge << endl;
    cout<<numA<<" "<<numB<<" "<<numEdge<<endl;
    return 1;
}
