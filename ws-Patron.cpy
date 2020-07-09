       01  ws-patron-record.
        10  ws-patron-number            pic x(03).
        10  ws-patron-name.
            20  ws-first-name           pic X(10).
            20  ws-last-name            pic X(12).
        10  ws-street-address           pic X(20).
        10  ws-city                     pic X(14).
        10  ws-state                    pic X(02).
        10  ws-zip                      pic X(10).
        10  ws-privilege-status         pic X(01).
        10  ws-patron-status            pic X(01).
        10  ws-book-right-sw            pic X comp-5.
        10  ws-periodical-right-sw      pic X comp-5.
        10  ws-video-right-sw           pic X comp-5.
        10  ws-books-out                pic 9(02).
        10  ws-seniority-date.
            15  ws-seniority-month      pic 9(02).
            15  ws-seniority-day        pic 9(02).
            15  ws-seniority-year       pic 9(04).
        10  ws-total-fees               pic 999V99
                                usage packed-decimal.
        10  filler                      pic X(07).