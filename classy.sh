#!/bin/bash
#This is a script to create a new java class source file with a given name.
#It takes the name of the class as it's only argument.

#This part writes the following lines into a new file with the name you chose.
echo "public class $1 {
\t//Made with Nat's classy script.
\tpublic static void main (String[] Args) {
\t\tSystem.out.println(\"I am a $1\");
\t}
}" > $1.java

#Then this part opens that file up in nano. Replace Nano with Emacs or Vim if you prefer.
nano $1.java
