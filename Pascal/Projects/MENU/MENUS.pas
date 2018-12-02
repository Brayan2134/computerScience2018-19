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
   writeln('In this program, you can explore the different airlines.');
   writeln('Let''s begin!');
  end;
 {End intro}

 {Display menu}
  procedure menu(var tempMenuSelection: char);
   begin
    writeln;
    writeln('Please Pick A Region':10);
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
      writeln('THE USER HAS MADE A CORRECT CHOICE.');
     end
    else
     repeat
      writeln('That''s an incorrect selection, please try again.');
      write('Please make a selection: ');
      readln(tempMenuSelection);
      tempMenuSelection := upcase(tempMenuSelection);
     until (tempMenuSelection = 'N') or (tempMenuSelection = 'S') or (tempMenuSelection = 'E') or (tempMenuSelection = 'A') or (tempMenuSelection = 'F') or (tempMenuSelection = 'Q');
    {End Authenticate Section}
   end;
 {End display menu procedure}

 {North American Airlines}
 procedure naAirlines;
 begin
  clrscr;
  writeln('North American Airlines':65);
  writeln;
  writeln('Mainline Passenger:');
  writeln;
  writeln('Alaska Airlines');
  writeln('Allegiant Air');
  writeln('American Airlines');
  writeln('Delta Air Lines');
  writeln('Frontier Airlines');
  writeln('Hawaiian Airlines');
  writeln('JetBlue');
  writeln('Southwest Airlines');
  writeln('Spirit Airlines');
  writeln('United Airlines');
  writeln;
  writeln('Regional Passenger:');
  writeln;
  writeln('Envoy Air (subsidiary of American Airlines Group)');
  writeln('Republic Airlines(subsidiary of Republic Airways Holdings)');
  writeln('SkyWest Airlines (subsidiary of SkyWest, Inc.)');
  writeln;
  writeln('Freight:');
  writeln;
  writeln('Atlas Air');
  writeln('FedEx Express');
  writeln('Polar Air Cargo');
  writeln('UPS Airlines');
 end;
 {End North American Airlines}

 {South American Airlines}
 procedure saAirlines;
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
 end;
 {End South American Airlines}

 {Europe Airlines}
 procedure euAirlines;
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
 end;
 {Europe Airlines}

 {Asia Airlines}
 procedure asiaAirlines;
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
 end;
 {End Asia Airlines}

 {Africa Airlines}
 procedure afAirlines;
 begin;
  clrscr;
  writeln('African Airlines':65);
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
     'N': naAirlines; // North American Airlines Point
     'S': saAirlines; // South American Airlines Point
     'E': euAirlines; // European Airlines Point
     'A': asiaAirlines; // Asian Airlines Point
     'F': afAirlines; // African Airlines Point
    end; // End Redirection Entrypoint
   end; // End Redirect To Desired Section
 readkey;
end. {main}
