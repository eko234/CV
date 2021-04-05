#lang racket
(require 
         web-server/http/request-structs
         web-server/http
         web-server/servlet-env
         web-server/dispatch
         net/url-structs
         json)

(define cur-dir (current-directory))

(define (monpage req)
  (response/xexpr 
    `(html (head (title "CV")
                      (meta ((name "viewport") (content "width=device-width, initial-scale=1.0")))
                      (link ((rel "preconnect") (href "https://fonts.gstatic.com")))
                      (link ((rel "stylesheet") (href "https://fonts.googleapis.com/css2?family=Gudea&display=swap")))
                      (link ((rel "stylesheet") (href "/style.css"))))
           (body
              (section [(class "main")]
                       (div [] 
                            (div [(class "hero")] 
                                 (h1 "LUIS ALFONSO BUELVAS BETANCOURT")
                                 (h3 "Software Developer"))
                            (h2 [(class "title")] "About me")
                            (p  "I'm a software developer with 3+ years of experiencie working
                                both in backend and frontend, i've been bringin 
                                value to my workplace building tools and infrastructure    
                                to modernize our product which used to be just
                                desktop applications, and now is working on to the web,
                                is being able to speak with other services/APIs, and
                                also reaching new people that benefit from those
                                big changes. I love learning and helping others
                                in their own path to knlowledge, I'm always up for
                                new challenges and love contributing in diverse ways
                                that might not regard to coding at all.")
                            (h2 [(class "title")] "Skills")
                            (h3 "Languages")
                            (div [(class "ico-bg")
                                  (style "background-color: #3776AB")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/python.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #2C2D72")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/lua.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #F7DF1E;")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/javascript.svg);  filter: none;")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #9F1D20")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/racket.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #5D4F85")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/haskell.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #FCC624")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/linux.svg); filter: none;")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #009639")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/nginx.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #1BB91F")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/tmux.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #1293D8")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/elm.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #1572B6")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/css3.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #E34F26")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/html5.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #336791")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/postgresql.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #61DAFB")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/react.svg); filter: none;")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #003B57")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/sqlite.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #EE1F35")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/delphi.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #F05032")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/git.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #181717")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/github.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #43802A")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/selenium.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #013243")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/numpy.svg)")]))
                            (div [(class "ico-bg")
                                  (style "background-color: #150458")]
                              (div [(class "ico-im")
                                    (style "background-image: url(/pandas.svg)")]))
                            (dl
                               (dd "- Python" )
                               (dd "- Javascript" )
                               (dd "- Racket" )
                               (dd "- Delphi" )
                               (dd "- Haskell" )
                               (dd "- Lua" )
                               (dd "- LISP" )
                               (dd "- PL/SQL" )
                               (dd "- CSS" )
                               (dd "- HTML" ))
                            (h3 "Techniques and Technologies:")
                            (dl
                               (dd "- HTTP protocol" )
                               (dd "- Web Sockets" )
                               (dd "- RESTful services" )
                               (dd "- Parsing" )
                               (dd "- Web Scrapping" )
                               (dd "- Desktop Applications" )
                               (dd "- Web Applications" )
                               (dd "- NGINX" )
                               (dd "- Linux" )
                               (dd "- SQL Databases" ))
                            (h2 [(class "title")] "Work and Experience")

                              (div [(class "card")]
                                   (h4 "Automatic backup system - Haskell")
                                   (p "This is a system that uses a transaction system
                                       to generate slots to receive database backups from
                                       our customer's servers, it consists in the backend
                                       implemented in servant, a security key generator,
                                       and a client multi platform application that communicates
                                       with the client database engine to perform a process that
                                       icludes validation, backup, compression and delivery of
                                       databases")
                                   (div [(class "links")]
                                     (a [(href "https://github.com/eko234/zendevp-backups")] (p [(class "button")]"Repo"))
                                        ))

                              (div [(class "card")]
                                   (h4 "Web page for a local business - Racket")
                                   (p "This is the first web page i sold, it has
                                       responsive design, custom css and uses my own
                                       implementation of a simple layout system that is 
                                       dynamically generated from the backend to behave differently
                                       depending on the kind of device that sends the request.")
                                   (div [(class "links")] 
                                         (a [(href "http://ipsufopopayan.com")] (p [(class "button")] "Check it out"))))

                              (div [(class "card")]
                                   (h4 "Dynamic form system - Racket")
                                   (p "A rather simple form application to gather info
                                       from our customers")
                                   (div [(class "links")]
                                        (a [(href "http://formularios.zendevp.com/parametrizacion?id=heehee&pass=ayuwoki")] 
                                                 (p [(class "button")] "Check it out" ))
                                        (a [(href "http://formularios.zendevp.com/parametrizacion?id=heehee&pass=ayuwoki")] 
                                                  (p [(class "button")] "Repo"))))

                              (div [(class "card")]
                                   (h4 "Web Bills - Delphi | React/Javascript ")
                                   (p "The Delphi ecosystem is quite lacking when it comes
                                       to free tools to build web applications, but our
                                       databases are higly dependant on Delphi, so i had
                                       to work around some constraints and ended up 
                                       implementing a routing system, and even a json
                                       serializer from scratch using the Delphi runtime type
                                       information system to develop the API for this service. 
                                       By the way, the frontend is built on React.")
                                   (div [(class "links")]
                                      (a [(href "http://recibos-web.zendevp.com")] (p [(class "button")] "Check it out")) 
                                      (a [(href "http://recibos-web.zendevp.com")] (p [(class "button")] "Repo")))

                            )
                            
                            
                            (div [(class "hero")]
                                 (h1 "Contact me!")
                                 (p "cel: 3424324")
                                 (p "mail: lu.al.bu@hotmail.com")))
              (script [(type "text/javascript")(src "lmao")]))))))

(define-values (go _)
  (dispatch-rules
   [("") #:method "get" monpage]))

(displayln cur-dir)

(serve/servlet go
   #:port 8091
   #:command-line? #t
   #:extra-files-paths (list (build-path cur-dir "assets"))
   #:servlet-regexp #rx"")
