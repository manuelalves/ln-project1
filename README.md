ln-project1
============

Project assignment for the Natural Language course 

MEIC-A # 2015/2016

www.tecnico.ulisboa.pt/ 

-
OPERATIONAL GOALS
-
- Troubleshooting using transducers.

GOALS
-
Use transducers to implement the following converters:

  1. hours converter in condensed form hh:mm for a form used in portuguese spoken language. 
  
    - Examples:

      - 14:25 --> catorze e vinte cinco;
      - 10:15 --> dez e quinze ou dez e um quarto;
      
    - The use of the word "fourth / quarto" and "half / meia" is taken into account in the assessment, the converter can generate one or more alternatives.
    - The use of the word "hours / horas" and "minutes / minutos" is optional and will not be taken into account in the evaluation.
    - Assume that the hours to convert are always valid.

  2. hours converter as used in the portuguese spoken language to the condensed form.

 
The file data.sym (available from statement) includes the definition of all symbols that can be used by transducers to develop. This file can NOT be changed.

Please note that all files should use UTF-8 encoding.

SOFTWARE
-
To test the proposed solution uses in Linux environment, the tools:

  - "Graphviz" (http://www.graphviz.org/);
  - "OpenFST" from Google (http://www.openfst.org/twiki/bin/view/FST/FstDownload)

Installation:
-

  1. Install Graphviz and OpenFST
  2. Clone the repo: <code>git clone https://github.com/manuelalves/ln-project1.git</code>
  3. Enter the directory: <code>cd ln-project1</code>
  4. Run the script: <code>./run.sh</code>
  5. To delete the generated files: <code>./remove.sh</code>
