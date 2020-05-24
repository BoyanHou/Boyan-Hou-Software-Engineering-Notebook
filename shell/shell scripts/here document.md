# here document  
[ref: wikipedia: here document](https://en.wikipedia.org/wiki/Here_document#Unix_shells)  

### Terminologies 
- here document == (here-document, here-text, heredoc, hereis, here-string or here-script)  
  > It is a section of a source code file that is treated as if it were a separate file.  
    The term is also used for a form of multiline string literals that use similar syntax, preserving line breaks and other whitespace (including indentation) in the text  

### How 
- The most common syntax for here documents, originating in Unix shells, is:  
  - `<<` followed by a delimiting identifier (often EOF or END),   
  - followed, starting on the next line, by the text to be quoted, 
  - closed by the same delimiting identifier on its own line.   
  ```bash
  cat > test.txt << EOF 
  your line 1
  your line 2 
  ... 
  EOF
  ```
- This syntax is because here documents are formally stream literals, and the content of the document is redirected to stdin (standard input) of the preceding command;   
  It is by analogy with the syntax for input redirection, which is < “take input from the following file”.  
