# ------ PATTERN MATCHING ------

a = 10 # assertion
# pattern matching / match operator
t = {1, 2, 3}
{a, b, c} = t

# anonym varible # _
{a, _, c} = t

data = {"Jane", 30, "developer"}

# pattern matching
{"Jane", age, position} = data

# pin ^

name = "Jame"
data = {"Jane", 30, "developer"}
{^name, age, position} = data

data = {"Bob", 29, "developer"}
{^name, age, position} = data # MatchError

# Matching for Map
my_cat = %{animal: "cat", age: 5, name: "Mr. Buttons"}
%{animal: animal, age: age, name: name} = my_cat
%{name: name} = my_cat
