       identification division.
       program-id. UpdatePatrons.

       environment division.
       configuration section.
       input-output section.
       file-control.
       select input-file assign to disk "C:\Patron.dat"
           organization indexed
           access random
           record key pr-patron-number.

       data division.

       file section.
       FD  input-file.
       copy "Patron.cpy".

       working-storage section.
       01  ws-patron-number                 pic X(03).
       01  ws-found-fg                 pic X(01).
       01  ws-output-line.
         03  ws-fname                  pic X(10).
         03  filler                      pic X(01) value space.
         03  ws-snme                   pic X(10).
         03  filler                      pic X(01) value space.
         03  ws-fees             pic 9(05).

       procedure division.
       start-para.
           Open input input-file.
           Display "Update module".
       read-para.
           Display "Enter a Patron number, or Send to exit".
           Accept ws-patron-number.
           If ws-patron-number = spaces
             go exit-para
           end-if.
           move ws-patron-number to pr-patron-number.
           move "Y" to ws-found-fg. 
           read input-file
               key is pr-patron-number
               invalid key move "N" to ws-found-fg.
           if ws-found-fg = "N"
               Display "Invalid number " ws-patron-number " entered"
               go read-para
           end-if
           move pr-first-name to ws-fname
           move pr-last-name to ws-snme.
           move pr-total-fees to ws-fees.
           Display "Patron details : " patron-record.
           go read-para.  
       exit-para.
           Close input-file.
           Stop run.
       