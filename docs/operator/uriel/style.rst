.. _operator_uriel_style:

Managing contest style
======================

A contest style will determine the allowed problem types and how the scoreboard is computed. Currently, two contest styles are supported: ICPC-style and IOI-style contests.

For both styles, you can specify programming languages allowed in the contest. For each problem in the contest, the final allowed languages are the **intersection** of the set of allowed languages of the problem (specified in Repository Gate) and the set of allowed languages in the contest.

Similar to Repository, only Pascal, C, C++, and Python 3 languages are currently supported.

ICPC-style
----------

Contests using usual ACM-ICPC rules. A submission is considered to have "accepted" verdict if its score is at least 100. This "normalization" is useful if you want to use "IOI-style" problems (that have subtasks) in an ICPC-style contest.

In this style, you can specify how much time penalty will be incorrect for each non-accepted submissions in a problem that is finally accepted.

IOI-style
---------

Contests using IOI rules. Ranking is based on total scores only. No other configurations are present for this style.
