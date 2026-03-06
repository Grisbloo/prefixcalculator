;;This project is designed to have a calculator keep memory enough to go back on, able to handle prefix notation.
#lang racket

;; ==========================================
;; 1. MODE DETECTION 
;; ==========================================
(define interactive?
   (let [(args (current-command-line-arguments))]
     (cond
       [(= (vector-length args) 0) #t]
       [(string=? (vector-ref args 0) "-b") #f]
       [(string=? (vector-ref args 0) "--batch") #f]
       [else #t])))

;; ==========================================
;; 2. HELPER FUNCTIONS 
;; ==========================================
(define (get-history-value id history)
  ;; TODO: Retrieve the correct value.
  ;; REMINDER: The most recent value is first. Reverse the list to get values by their chronological ID[cite: 119, 120, 121].
  'TODO)

;; ==========================================
;; 3. PARSING & EVALUATION 
;; ==========================================
;; The professor recommends functions that return a two-element list: 
;; '(result remaining-characters).

(define (eval-expr chars history)
  ;; TODO: Evaluate a single expression[cite: 123].
  ;; chars is a list of characters (e.g., from string->list)[cite: 150].
  ;; Handle whitespace, +, *, /, -, $n, and raw numbers here[cite: 124, 126, 132, 134, 136, 137].
  'TODO)

;; ==========================================
;; 4. MAIN EVALUATION LOOP 
;; ==========================================
(define (eval-loop history)
  ;; Prompt the user for an expression.
  (when interactive?
    (display "> ")) 
  
  (define input (read-line)) 
  
  (cond
    ;; If the input is exactly "quit", the program will exit.
    [(string=? input "quit") (void)]
    
    [else
     ;; For Hour 1, let's just make sure the loop works without crashing.
     ;; It will echo the input and restart the loop.
     (displayln (string-append "Evaluating: " input))
     (eval-loop history)]))
    
    [else
     ;; TODO: Implement evaluation flow:
     ;; 1. Convert input string to list of characters[cite: 150].
     ;; 2. Call eval-expr.
     ;; 3. Error Check: Is there text remaining after evaluation? (e.g., "+ 1 2 2" is an error) .
     ;; 4. If success:
     ;;    - Convert the number using real->double-flonum and print with display[cite: 112].
     ;;    - Output format: "id: result" (no leading zeros on id)[cite: 111].
     ;;    - Recurse eval-loop with (cons result history)[cite: 114, 115].
     ;; 5. If error:
     ;;    - Print "Error: Invalid Expression"[cite: 107, 108].
     ;;    - Recurse eval-loop with unchanged history.
     
     ;; Placeholder recursive call so it doesn't crash right now:
     (eval-loop history)]

;; ==========================================
;; 5. PROGRAM ENTRY POINT
;; ==========================================
;; Start the loop with an empty history list
(eval-loop '())