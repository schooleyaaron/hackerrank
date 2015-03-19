using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {
    static int Binary(List<int> A, int l, int r, int key) {
        int m;

        while( r - l >= 1 ) {
            m = l + (r - l)/2;
            if( A[m] >= key ){
                r = m;
            }
            else {
                l = m;
            }
        }
        return r;
    }
    static int LIS(List<int> input){
        List<int> S = new List<int>();
        S.Add(-1);
        S.Add(input[0]);
        int count = 1;
        for(int i = 1; i < input.Count(); i++){
            if(S[S.Count()-1] < input[i]){
                S.Add(input[i]);
                count++;
            }
            else{
                int t = Binary(S,0,S.Count()-1,input[i]);
                S[t] = input[i];
            }
        }
        return count;
    }
    static void Main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        List<int> ints = new List<int>();
        int times = int.Parse(Console.ReadLine());
        for(int i = 0; i < times; i++){
            ints.Add(int.Parse(Console.ReadLine()));
        }
        Console.WriteLine(LIS(ints));
    }
}
