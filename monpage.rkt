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
    `(html (head (title "UFO")
                      (meta ((name "viewport") (content "width=device-width, initial-scale=1.0")))
                      (link ((rel "preconnect") (href "https://fonts.gstatic.com")))
                      (link ((rel "stylesheet") (href "https://fonts.googleapis.com/css2?family=Gudea&display=swap")))
                      (link ((rel "stylesheet") (href "/style.css"))))
           (body
              (section [(class "main")]
                       (div [(class "card")] 

                            (h1 "LUIS ALFONSO BUELVAS BETANCOURT")
                            (h2 "About me")
                            (p "I'm a software developer with experiencie working
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
                            (h2 "Skills")
                            (h3 "Languages")
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
                            (h3 "Some stuff I've built")

                              (div [(class "white-card")]
                                   (h4 "Automatic backup system - Haskell")
                                   (p "This is a system that uses a transaction system
                                       to generate slots to receive database backups from
                                       our customer's servers, it consists in the backend
                                       implemented in servant, a security key generator,
                                       and a client multi platform application that communicates
                                       with the client database engine to perform a process that
                                       icludes validation, backup, compression and delivery of
                                       databases")
                                   (a [(class "button")(href "https://github.com/eko234/zendevp-backups")] "Repo"))

                              (div [(class "white-card")]
                                   (h4 "Web page for a local business - Racket")
                                   (p "This is the first web page i sold, it has
                                       responsive design, custom css and uses my own
                                       implementation of a simple layout system that is 
                                       dynamically generated from the backend to behave differently
                                       depending on the kind of device that sends the request.")
                                   (a [(class "button")(href "http://ipsufopopayan.com")] "Check it out"))

                              (div [(class "white-card")]
                                   (h4 "Dynamic form system - Racket")
                                   (p "A rather simple form application to gather info
                                       from our customers")
                                   (a [(class "button")(href "http://formularios.zendevp.com/parametrizacion?id=heehee&pass=ayuwoki")] "Check it out")
                                   (a [(class "button")(href "http://formularios.zendevp.com/parametrizacion?id=heehee&pass=ayuwoki")] "Repo")
                                   
                                   )

                              (div [(class "white-card")]
                                   (h4 "Web Bills - Delphi | React/Javascript ")
                                   (p "The Delphi ecosystem is quite lacking when it comes
                                       to free tools to build web applications, but our
                                       databases are higly dependant on Delphi, so i had
                                       to work around some constraints and ended up 
                                       implementing a routing system, and even a json
                                       serializer from scratch using the Delphi runtime type
                                       information system to develop the API for this service.")
                                   (a [(class "button") (href "http://recibos-web.zendevp.com")] "Check it out")
                                   (a [(class "button") (href "http://recibos-web.zendevp.com")] "Repo")
                                   )

                            ))
              (script [(type "text/javascript")(src "lmao")])))))

(define-values (go _)
  (dispatch-rules
   [("") #:method "get" monpage]))

(displayln cur-dir)

(serve/servlet go
   #:port 8091
   #:command-line? #t
   #:extra-files-paths (list (build-path cur-dir "assets"))
   #:servlet-regexp #rx"")
