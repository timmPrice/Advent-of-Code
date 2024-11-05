using System.IO;
using System.Text.RegularExpressions;

namespace aoc_2022;

public class Program{

    public static void Main(string[] args){
        int answer = 0;
        
        using(StreamReader read = File.OpenText("puzzle-input.txt")){
            string input;
            while((input = read.ReadLine()) != null){
                input = matchDigits(input); 
                answer += FindDigits(input);
            }
        }
        Console.WriteLine(answer);
    }

    public static int FindDigits(string input){
            int value = 0; string number = "";
            
            for(int i = 0; i < input.Length; i++){
                if(char.IsDigit(input[i])){
                    number += input[i];
                }
            } 
           
            if(number.Length >= 2){
                value = Convert.ToInt32(number[0].ToString() + number[number.Length - 1].ToString());
            } else {
                value = Convert.ToInt32(number + number);
            }
            
            return value;
    }

    // use regex to pattern match ex. one, two... and convert to 1, 2...
    public static string matchDigits(string input){
        
        var Digits = new Dictionary<string, string>(){
            {"one", "1"},
            {"two", "1"},
            {"three", "1"},
            {"four", "1"},
            {"five", "1"},
            {"six", "1"},
            {"seven", "1"},
            {"eight", "1"},
            {"nine", "1"},
            {"zero", "1"},
        };
        
        string RegexPattern = @"\b(" + string.Join("|", Digits.Keys) + @")\b";
        input = Regex.Replace(input, RegexPattern, match => Digits[match.Value]); 
        return input;
    }
}

