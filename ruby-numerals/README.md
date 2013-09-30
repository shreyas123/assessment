
Ruby Programmer - Excercise 1
=============================

Fork this project with the original description and write your own code.

Commit the important milestones and not just the final result!


Excercise descrption
--------------------

Create a Rails project, with a simple controller logic.

We need a web form, which has a numeric input field and a submit button.

When user gives an arabic number, the system shows the english phrase of the number.

For example:
<pre>
7    == seven
42   == forty-two
2001 == two thousand and one
1999 == nineteen hundred and ninety-nine
</pre>

That's all.

Extra points: write your code in TDD / BDD, use cucumber, rspec, or other test frameworks

Solution
--------

Please clone the directory and perform a bundle install

Run rails server 

Open http://localhost:3000/ 

Add number in the input box and press Submit.

Changes
-------

You can change the way number is ouputted by going in the YML files

Right now the number support lacs for 6 digit number. You can replace the digits.yml file present in the config to make it a million numbering system

<pre>
---
3: hundred
4: thousand
7: million
9: billion
</pre>

You can even change the numbering as per the translations or the way you would love it by changing the numbers.yml file 

Ex for french numbering

<pre>
---
0: zéro
1: une
2: deux
..........
</pre>

