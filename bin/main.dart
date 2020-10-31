//I, Ethan Wolcott, did not share code or talk to other students about this exam

//This program will store 2020 democratic candidates in a map and track their delegates by state thus far.
//The user can serach for a candidate by choice and instantly see the total delegates for their candidate.

import 'dart:io';

main() {
  bool playing = true;
  while (playing) {//loop the questioning until told otherwise
    var candidates = Map<String, List<int>>();//map of each candidate and their delegates by state so far
    candidates["Biden"] = [6, 0, 9, 39]; //The map form will make this eaily updateable.
    candidates["Bloomberg"] = [0, 0, 0, 0];
    candidates["Buttigieg"] = [14, 9, 3, 0];
    candidates["Klobuchar"] = [1, 6, 0, 0];
    candidates["Sanders"] = [12, 9, 24, 15];
    candidates["Steyer"] = [0, 0, 0, 0];
    candidates["Warren"] = [8, 0, 0, 0];

    print('Search a candidate to see how many delegates they have.');
    print(' ');
    print('Which candidate would you like to check on?'); //ask user for input
    var menu = new List();
    menu = [//make a new list to display the candidate choices. Yes, three of these are gone already. Politics. 
      "Biden",
      "Bloomberg",
      "Buttigieg",
      "Klobuchar",
      "Sanders",
      "Steyer",
      "Warren"
    ];
    print(menu); //display choices

    var choice = stdin.readLineSync();//store user input
    print(" ");
//check if input is valid
    while (menu.contains(choice) == false) {
      print('Please select a valid candidate.');
      choice = stdin.readLineSync();
      print(" ");
    }
//take the user choice and utilize the reduce method to output the sum so far
    var totals = candidates[choice].reduce((value, element) => value + element);
    print("$choice has " + totals.toString() + " delegates so far.");
    print(" ");
    print("Would you like to check another candidate? y/n"); //ask to continue
    choice = stdin.readLineSync();
    if (choice == "n") {
      print("Ok then. Have a lovely day."); //gracefully exit.
      playing = false;
    }
  }
}
