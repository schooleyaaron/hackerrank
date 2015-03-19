using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static int[] LetterCounts(string input)
    {
        int[] counts = new int[256];
        foreach(char c in input)
        {
            counts[c]++;
        }
        return counts;
    }
    static int AnagramDeletions(string x, string y)
    {
        int[] xBuffer = LetterCounts(x);
        int[] yBuffer = LetterCounts(y);

        int deletions = 0;
        for(int i = 0; i < 256; i++)
        {
            if(xBuffer[i] != yBuffer[i])
            {
                deletions += Math.Abs(xBuffer[i] - yBuffer[i]);
            }
        }
        return deletions;
    }
    static void Main(String[] args)
    {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
        string input1 = Console.ReadLine();
        string input2 = Console.ReadLine();
        Console.WriteLine(AnagramDeletions(input1, input2));
    }
}
