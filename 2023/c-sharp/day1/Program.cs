using System.IO;

namespace aoc_2022;

public class Program{

    public static void Main(string[] args){
        int answer = 0;
        
        using(StreamReader read = File.OpenText("puzzle-input.txt")){
            string input;
            while((input = read.ReadLine()) != null){
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
}

