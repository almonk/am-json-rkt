#lang racket
(require net/url
         json)

(provide get-json)

(define (get-json url)
  (call/input-url (string->url url)
                  get-pure-port
                  (compose string->jsexpr port->string)))
