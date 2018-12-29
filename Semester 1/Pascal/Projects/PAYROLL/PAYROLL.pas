{
 NAME: Brayan Quevedo Ramos
 CLASS: Comp Sci 1
 DATE:

 PURPOSE: To create a payroll program that calcs
          the name/hours/wage/gross/state/federal/ss
}

program programname;

{Libs}
uses crt;

     {PROCEDURES***************************************************************}

     {getInt - Make sure user types an Integer}
     Procedure getInt(ask:string; var num:integer);
        var
           numStr : string;
           code : integer;

        begin
           repeat
              write(ask);
              readln(numstr);
              val(numStr, num, code);
              if code <> 0 then
              begin
                 writeln('Not an integer ');
                 writeln('Press any key to try again.');
                 readkey;
                 clrscr;
              end;
           until (code = 0);
        end;
        {End getInt - Make sure user types an Integer}

        {Name Of Employee}
        procedure employeeName(var tempName: string);
         begin
          write('What''s the name of the employee?: ');
          readln(tempName);
          writeln ;
         end;
        {End Name Of Employee}

        {Hours Worked}
        procedure employeeWork(var tempHours, tempPay: real);
         begin
          write('How many hours did this employee work: ');
          readln(tempHours);
          writeln ;
          write('How much does this employee make an hour?: ');
          readln(tempPay);
          writeln ;
         end;
        {End Hours Worked}

        {Overtime}
         procedure employeeOvertime(var tempOT, YOT: real);
         var
          EOT: char;

          begin
           repeat
            write('Did your employee, work overtime?(y/n): ');
            readln(EOT);
            EOT := upcase(EOT);
            writeln ;
           until (EOT = 'Y') or (EOT = 'N'); // Repeat Until These COND Met
           if (EOT = 'N') then //If User Puts No
            begin
             writeln ;
             writeln('Sounds good, let''s continue');
            end; //End If User Puts No
           if (EOT = 'Y') then //If User Puts Yes
            begin
             write('Sounds good! How many hours did the employee work?: ');
             readln(tempOT);
             writeln ;
             write('How much does the employee make in overtime?: ');
             readln(YOT);
             writeln ;
            end; //End If User Puts Yes
          end; //End Of Procedure
        {Overtime}

     {END PROCEDURES***********************************************************}

{******************************************************************************}
     var {main}
      nameOfEmployee: string;
      hoursWorked: real;
      hoursPaid: real;
      hoursOvertime: real;
      hoursOvertimePay: real;
      employeeGross: real;
      employeeGrossAfter: real;

begin {main}

 {Introduction}
  clrscr;
  textcolor(white);
  delay(200);
  writeln('Hello and welcome to the Payroll Program');
  writeln ;
  delay(200);
  writeln('In this program you can calculate the payroll of the employees you have.');
  writeln ;
  delay(200);
  writeln('Sound good?');
  writeln ;

  textbackground(blue);
  delay(550);
  writeln('Press any key to continue.');
  textbackground(black);
  readkey;
  clrscr;
 {End Introduction}

 employeeName(nameOfEmployee); //User Inputs Name Of Employee
 writeln ; //Create Space
 employeeWork(hoursWorked, hoursPaid); //User Inputs How Many Hours The Employee Worked
 writeln ; //Create Space
 employeeOvertime(hoursOvertime, hoursOvertimePay); //User Inputs OT Hours (If Applicable)

 {Calculate Gross}
  employeeGross := hoursWorked * hoursPaid; //Gross NO OT
 {End Calculate Gross}

 {State Tax}
 {End State Tax}

 {Federal Tax}
 {End Federal Tax}

 {Social Security Tax}
 {End Social Security Tax}
 readkey;
end. {main}
