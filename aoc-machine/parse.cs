using System.Text.RegularExpressions;

namespace advent_of_code;

public class Parse{

    public static void Main(string[] args){
        GetPuzzleInfo();
    }
    
    public static void GetPuzzleInfo(){
        string content;
        using (var reader = File.OpenText("puzzle-info.txt"))
        using(StreamWriter writer = new StreamWriter("puzzle.txt"))
        {
            while ((content = reader.ReadLine()) != null){   
                content = Regex.Replace(content, @"<\s*\/?\s*[^>]+>", "");  // regex to remove html elements 
                writer.Write(content + "\n");
            }
        }
    } 

    // somehow submit the answer from the shell
    // organize files to make a nice template when trying to solve one of the problems
    // make a cli-tool with a pretty status bar for getting the files ready
}