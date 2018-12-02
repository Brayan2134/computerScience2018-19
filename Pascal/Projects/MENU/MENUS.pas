{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE: 11/29/18

 PURPOSE: To make a menu and from that menu
          accomplish a specified task.

 STRUCTURE: - Intro (procedure).
            - Display Menu Options.
            - Get char from user (all one procedure).
            - Depending on what the user want's to see display it.
              - Can come back to menu at any time.
              - Can exit program at any time.
}

program menus;

{Libs}
uses crt;

 {Intro to program}
 procedure intro;
  begin
   writeln('Welocome to the AIRLINE CATALOG':65);
   writeln;
   delay(500);
   writeln('In this program, you can explore the different airlines.');
   delay(500);
   writeln('Let''s begin!');
  end;
 {End intro}

 {Display menu}
  procedure menu(var tempMenuSelection: char);
   begin
    writeln;
    textbackground(green);
     writeln('Please Pick A Region':10);
    textbackground(black);
    writeln;
    writeln('[N]orth America.');
    writeln('[S]outh America.');
    writeln('[E]urope.');
    writeln('[A]sia.');
    writeln('A[F]rica.');
    writeln('[Q]uit.');
    write('Please make a selection: ');
    readln(tempMenuSelection);
    tempMenuSelection := upcase(tempMenuSelection);

    {Authenticate Selection}
    if (tempMenuSelection = 'N') or (tempMenuSelection = 'S') or (tempMenuSelection = 'E') or (tempMenuSelection = 'A') or (tempMenuSelection = 'F') or (tempMenuSelection = 'Q') then
     begin
      writeln;
     end
    else
     repeat
      textbackground(red);
       writeln('That''s an incorrect selection, please try again.');
      textbackground(black);
      write('Please make a selection: ');
      readln(tempMenuSelection);
      tempMenuSelection := upcase(tempMenuSelection);
     until (tempMenuSelection = 'N') or (tempMenuSelection = 'S') or (tempMenuSelection = 'E') or (tempMenuSelection = 'A') or (tempMenuSelection = 'F') or (tempMenuSelection = 'Q');
    {End Authenticate Section}
   end;
 {End display menu procedure}

 {North American Airlines}
 procedure naAirlines(var tempNaAirlines: char);
 begin
  clrscr;
  delay(400);
  writeln('North American Airlines':65);
  writeln;
  textbackground(green);
   writeln('Mainline Passenger:');
  textbackground(black);
  delay(200);
  writeln;
  writeln('Alaska Airlines');
  writeln('Allegiant Air');
  writeln('American Airlines');
  writeln('Delta Air Lines');
  writeln('Frontier Airlines');
  writeln('Hawaiian Airlines');
  writeln('JetBlue');
  delay(200);
  writeln('Southwest Airlines');
  writeln('Spirit Airlines');
  writeln('United Airlines');
  writeln;
  textbackground(green);
   delay(400);
   writeln('Regional Passenger:');
  textbackground(black);
  writeln;
  writeln('Envoy Air (subsidiary of American Airlines Group)');
  writeln('Republic Airlines(subsidiary of Republic Airways Holdings)');
  writeln('SkyWest Airlines (subsidiary of SkyWest, Inc.)');
  writeln;
  textbackground(green);
   delay(400);
   writeln('Freight:');
  textbackground(black);
  writeln;
  writeln('Atlas Air');
  writeln('FedEx Express');
  writeln('Polar Air Cargo');
  writeln('UPS Airlines');
  writeln;
  repeat // Ask User To goto Menu/Exit.
   delay(100);
   write('Wish to see more?(y/n): ');
   readln(tempNaAirlines);
   tempNaAirlines := upcase(tempNaAirlines);
  until (tempNaAirlines = 'Y') or (tempNaAirlines = 'N');
 end;
 {End North American Airlines}

 {South American Airlines}
 procedure saAirlines(var tempSaAirlines: char);
 begin;
  clrscr;
  writeln('South American Airlines':65);
  writeln;
  writeln('Mainline Passenger:');
  writeln;
  writeln('LAN Airlines');
  writeln('Avianca');
  writeln('TAM Airlines');
  writeln('Azul Airlines');
  writeln('Sky Airlines');
  writeln('Gol');
  writeln('Star Peru');
  writeln('Peruvian Airlines');
  writeln;
  textbackground(blue);
  repeat // Ask User To goto Menu/Exit.
   delay(100);
   write('Wish to see more?(y/n): ');
   readln(tempSaAirlines);
   tempSaAirlines := upcase(tempSaAirlines);
  until (tempSaAirlines = 'Y') or (tempSaAirlines = 'N');
  textbackground(black);
 end;
 {End South American Airlines}

 {Europe Airlines}
 procedure euAirlines(var tempEuAirlines: char);
 begin;
  clrscr;
  writeln('European Airlines':65);
  writeln;
  writeln('General Airlines');
  writeln;
  writeln('Lufthansa Group');
  writeln('Ryanair');
  writeln('International Airlines Group');
  writeln('Air France');
  writeln('KLM');
  writeln('easyJet');
  writeln('Turkish Airlines');
  writeln('Aeroflot Group');
  writeln('Norwegian Air Shuttle ASA');
  writeln('SAS Group');
  writeln('Wizz Air');
  writeln('Pegasus Airlines');
  writeln('Alitalia');
  writeln('TAP Air Portugal');
  writeln('S7 Group');
  writeln('Aegean Airlines');
  writeln('Finnair');
  writeln('Air Europa');
  writeln('Jet2');
  writeln('flybe');
  writeln('LOT Polish Airlines');
  writeln('SmartWings Group');
  writeln('Ural Airlines');
  writeln('UTair Aviation');
  writeln('Ukraine International Airlines');
  writeln('Virgin Atlantic');
  writeln('Blue Air');
  writeln('Volotea');
  writeln('Icelandair Group');
  writeln('Azur Air');
  writeln('AirBaltic');
  writeln('AND MORE!');
  writeln;
  textbackground(blue);
  repeat // Ask User To goto Menu/Exit.
   delay(100);
   write('Wish to see more?(y/n): ');
   readln(tempEuAirlines);
   tempEuAirlines := upcase(tempEuAirlines);
  until (tempEuAirlines = 'Y') or (tempEuAirlines = 'N');
  textbackground(black);
 end;
 {Europe Airlines}

 {Asia Airlines}
 procedure asiaAirlines(tempAsiaAirlines: char);
 begin;
  clrscr;
  writeln('Asian Airlines':65);
  writeln;
  writeln('Mainline Passenger:');
  writeln;
  writeln('Hainan Airlines');
  writeln('Malaysia Airlines');
  writeln('Thai Airways');
  writeln('EVA Air');
  writeln('Asiana Airlines');
  writeln('Garuda Indonesia');
  writeln('ANA');
  writeln('Sinapore Airlines');
  writeln('Cathay Pacific Airways');
  writeln('AND MORE!');
  writeln;
  textbackground(blue);
  repeat // Ask User To goto Menu/Exit.
   delay(100);
   write('Wish to see more?(y/n): ');
   readln(tempAsiaAirlines);
   tempAsiaAirlines := upcase(tempAsiaAirlines);
  until (tempAsiaAirlines = 'Y') or (tempAsiaAirlines = 'N');
  textbackground(black);
 end;
 {End Asia Airlines}

 {Africa Airlines}
 procedure afAirlines(var tempAfAirlines: char);
 begin;
  clrscr;
  writeln('African Airlines':65);
  writeln;
  writeln('Mainline Passenger:');
  writeln;
  writeln('Ethiopian Airlines');
  writeln('South African Airways');
  writeln('Air Mauritius');
  writeln('Air Seychelles');
  writeln('Kenya Airways');
  writeln('Royal Air Maroc');
  writeln('Mango');
  writeln('Fastjet');
  writeln('AND MORE!');
  writeln;
  textbackground(blue);
  repeat // Ask User To goto Menu/Exit.
   delay(100);
   write('Wish to see more?(y/n): ');
   readln(tempAfAirlines);
   tempAfAirlines := upcase(tempAfAirlines);
  until (tempAfAirlines = 'Y') or (tempAfAirlines = 'N');
  textbackground(black);
 end;
 {End Africa Airlines}

 {Outro}
  procedure outro;
   begin
    writeln ;
    writeln('Thank you for using this program');
    writeln('Press any key to end the program.');
   end;
 {End Outro procedure}
{******************************************************************************}
var
 menuSelection: char;

begin {main}
 intro; // Intro squenence
  menu(menuSelection); // Display Menu & Authenticate

  // Only Options User Has At This Point: N/S/E/A/F/Q

  if (menuSelection = 'Q') then // If User Types Q Then Exit Program
  begin
   outro;
  end
  else // If User Didn't Press Q Then Redirect To Desired Section
   begin
    case (menuSelection) of // Redirection Entrypoint
     'N': naAirlines(menuSelection); // North American Airlines Point
     'S': saAirlines(menuSelection); // South American Airlines Point
     'E': euAirlines(menuSelection); // European Airlines Point
     'A': asiaAirlines(menuSelection); // Asian Airlines Point
     'F': afAirlines(menuSelection); // African Airlines Point
    end; // End Redirection Entrypoint
    if (menuSelection = 'Y') then // Repeat Case Above if User := Y
     repeat
      menu(menuSelection);
      case (menuSelection) of // Redirection Entrypoint
       'N': naAirlines(menuSelection); // North American Airlines Point
       'S': saAirlines(menuSelection); // South American Airlines Point
       'E': euAirlines(menuSelection); // European Airlines Point
       'A': asiaAirlines(menuSelection); // Asian Airlines Point
       'F': afAirlines(menuSelection); // African Airlines Point
      end; // ExitPoint
     until(menuSelection = 'N') or (menuSelection = 'Q')// Once User Types N/Q After Loop, then Redirect to Outro
     else
      outro; // Outro
   end; // End Redirect To Desired Section

   // End Program
 readkey;
end. {main}
